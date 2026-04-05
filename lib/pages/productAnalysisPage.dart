import 'package:flutter/material.dart';
import '../services/api_service.dart';
import '../services/ingredient_service.dart';
import '../widgets/product_card.dart';
import '../widgets/ingredient_card.dart';
import '../widgets/allergen_tile.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({super.key});

  final String barcode = "148214";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Food Info")),
      body: FutureBuilder<Map<String, dynamic>?>(
        future: ApiService.fetchFood(barcode),
        builder: (context, snapshot) {

          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          var result = snapshot.data!;
          var source = result["source"];
          var data = result["data"];

          List<String> ingredientNames = [];

          if (source == "openfoodfacts") {
            List ingredients = data["ingredients"] ?? [];
            ingredientNames = ingredients
                .map<String>((i) => (i["text"] ?? "").toString())
                .toList();
          }

          List<String> allergens = [];

          if (source == "openfoodfacts") {
            String allergensText = data["allergens"] ?? "";
            allergens = allergensText.isNotEmpty ? allergensText.split(",") : [];
          } else if (source == "backend") {
            String allergensText = data["food"]?["allergens"] ?? "";
            allergens = allergensText.isNotEmpty ? allergensText.split(",") : [];
          }

          allergens = allergens
          .map((a) => a.replaceAll("en:", "").trim())
          .toList();

          return FutureBuilder<List<dynamic>>(
            future: source == "openfoodfacts"
                ? IngredientService.fetchIngredientDetails(ingredientNames)
                : Future.value(data["ingredients"]),
            builder: (context, ingSnapshot) {

              if (!ingSnapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              }

              var ingredients = ingSnapshot.data!;

              return ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  ProductCard(
                    name: data["product_name"] ?? "Unknown",
                    brand: data["brands"] ?? "Unknown",
                    calories: "Unknown",
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    "Allergens",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                  if (allergens.isEmpty)
                    const Text("No allergens found"),

                  for (var allergen in allergens)
                    AllergenTile(allergen: allergen),


                  const Text("Ingredients",
                      style: TextStyle(fontSize: 18)),

                  for (var ing in ingredients)
                    IngredientCard(ingredient: ing),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
