import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
void main() async {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FoodPage(),
    );
  }
}

class FoodPage extends StatelessWidget {

  //example of barcode after scanning
  final String barcode = "148214";

  const FoodPage({super.key});


// fetching data from openfoodfacts api

Future<Map<String, dynamic>?> fetchFromOpenFoodFacts(String barcode) async {

  try {
    final url = Uri.parse(
        'https://world.openfoodfacts.org/api/v0/product/$barcode.json');

    final response = await http.get(url).timeout(Duration(seconds: 5));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      if (data["status"] == 1) {
        return {
          "source": "openfoodfacts",
          "data": data["product"]
        };
      }
    }
  } catch (e) {
    print("OFF API failed: $e");
  }

  return null;

}

// fetching data from backend api

Future<Map<String, dynamic>?> fetchFromBackend(String barcode) async {
  try {

    // if u r testing on pc browser use http://localhost:3000/food/$barcode
    // for android emulator replace localhost with 10.0.2.2
    // and on a phone device use local ip 


    final url = Uri.parse("http://localhost:3000/food/$barcode");

    final response = await http.get(url).timeout(Duration(seconds: 5));

    if (response.statusCode == 200) {
      return {
        "source": "backend",
        "data": jsonDecode(response.body)
      };
    }
  } catch (e) {
    print("Backend API failed: $e");
  }

  return null;
}

Future<List<dynamic>> fetchIngredientDetails(List<String> ingredients) async {
  try {
    final url = Uri.parse("http://localhost:3000/ingredients");

    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"ingredients": ingredients}),
    );

    if (response.statusCode == 200) {
      final decoded = jsonDecode(response.body);
        print(response.body);

      if (decoded is List) {
        return decoded;
      }
    }
  } catch (e) {
    print("Ingredient fetch failed: $e");
  }

  return []; // ALWAYS return list
}


Future<Map<String, dynamic>?> fetchFood(String barcode) async {

  // using openfoodfacts api first
  var result = await fetchFromOpenFoodFacts(barcode);


  if (result != null) {
    print("Using Open Food Facts");
    return result;
  } 

  // else switch to backend
  print("Falling back to backend...");
  return await fetchFromBackend(barcode);

}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Food Info"), 
      backgroundColor: Colors.white,
      foregroundColor: Colors.purple,
      actions: [
        IconButton(icon: Icon(Icons.home),color: Colors.purple, onPressed: () {}),
        IconButton(icon: Icon(Icons.camera),color: Colors.purple, onPressed: () {}),
        IconButton(icon: Icon(Icons.spa),color: Colors.purple, onPressed: () {})
      ]),
      body: FutureBuilder<Map<String, dynamic>?>(

        future: fetchFood(barcode),
        builder: (context, snapshot) {

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data == null) {
            return Center(child: Text("Food not found"));
          }

          var result = snapshot.data!;
          var source = result["source"];
          var data = result["data"];

          if (data == null || data["error"] != null) {
            return Center(child: Text("Food not found in database"));
          }


          const nonVeganList = ["milk", "egg", "honey", "butter", "cheese"];
          const glutenList = ["wheat", "flour", "barley", "rye"];


          // variables with defaults
          String name = "Unknown";
          String brand = "Unknown";
          var calories = "Unknown";
          List<String> allergens = [];
          bool vegan = false;
          bool glutenFree = false;
          List<String> ingredientNames = [];
          List<dynamic> ingredientsData = [];

          // ------ extracting data based on source structure

          if (source == "openfoodfacts") {
            
            name = data["product_name"] ?? "Unknown";
            brand = data["brands"] ?? "Unknown";
            
            var kcalValue = data["nutriments"]?["energy-kcal_100g"];
            calories = kcalValue != null ? kcalValue.toString() : "Unknown";


            String allergensText = data["allergens"] ?? "";
            allergens = allergensText.isNotEmpty ? allergensText.split(",") : [];

            vegan = data["ingredients_analysis_tags"]?.contains("en:vegan") ?? false;
            glutenFree = !(data["allergens"]?.toString().contains("gluten") ?? false);

            List ingredients = (data["ingredients"] is List)
            ? data["ingredients"]: [];

            ingredientNames = ingredients
            .where((i) => i != null)
            .map<String>((i) => (i["text"] ?? "").toString().toLowerCase())
            .toList();

          } else if (source == "backend") {

            var food = data["food"] ?? {};
              ingredientsData = (data["ingredients"] is List)
              ? data["ingredients"]: [];

            name = food["name"] ?? "Unknown";
            brand = food["brand"] ?? "Unknown";
            
            calories = food["kcl"]?.toString() ?? "Unknown";


            String allergensText = food["allergens"] ?? "";
            allergens = allergensText.isNotEmpty ? allergensText.split(",") : [];

              ingredientNames = ingredientsData
              .where((i) => i != null)
              .map<String>((i) => (i["name"] ?? "").toString().toLowerCase())
              .toList();
            ingredientsData = (data["ingredients"] is List)
             ? data["ingredients"]
              : [];


            if( ingredientNames.any((ing) => nonVeganList.contains(ing.toLowerCase()))) {
              vegan = false;
            } else {
              vegan = true;
            }

            if( ingredientNames.any((ing) => glutenList.contains(ing.toLowerCase()))) {
              glutenFree = false;
            } else {
              glutenFree = true;
            }
            
          }

          return FutureBuilder<List<dynamic>>(
            future: source == "openfoodfacts"
            ? fetchIngredientDetails(ingredientNames)
            : Future.value((data["ingredients"] is List) ? data["ingredients"] : []),
            builder: (context, ingSnapshot) {

          if (ingSnapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          var ingredientsData = ingSnapshot.data ?? [];

          return SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

      /// Product Card
      Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text("Brand: $brand"),
              Text("Calories: $calories kcal"),
            ],
            ),
            ),
            ),
            SizedBox(height: 20),
            Row(
            children: [
              Chip(
              label: Text("Vegan: ${vegan ? "Yes" : "No"}"),
              ),
              SizedBox(width: 10),
              Chip(
                label: Text("Gluten Free: ${glutenFree ? "Yes" : "No"}")
              ),
              ],
            ),

            SizedBox(height: 20),

            Text(
                "Allergens",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              for (var allergen in allergens)
              ListTile(
                leading: Icon(Icons.warning, color: Colors.orange),
                title: Text(allergen),
              ),

              SizedBox(height: 20),

              Text("Ingredients",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
                  ),
                ),

                for (var ingredient in ingredientsData)
                Builder(
                  builder: (context) {
                  String name = ingredient["name"] ?? "Unknown";
                  String status = ingredient["status"] ?? "unknown";
                  String notes = ingredient["notes"] ?? "No data";

                Color color = Colors.grey;

                if (status == "safe") {
                  color = Colors.green;
                } else if (status == "controversial") {
                  color = Colors.orange;
                } else if (status == "unknown") {
                  color = Colors.grey;
                } else {
                  color = Colors.red;
                }

                return Card(
                elevation: 2,
                margin: EdgeInsets.symmetric(vertical: 6),
                child: ListTile(
                  title: Text(name),
                  subtitle: Text(notes),
                  trailing: Chip(
                  label: Text(status),
                  backgroundColor: color.withOpacity(0.2),
                  labelStyle: TextStyle(color: color),
                  ),
                ),
                );
              },
            ),

              ],
            ),
         );
        },
        );
        }
      ),
    );
  }
}


