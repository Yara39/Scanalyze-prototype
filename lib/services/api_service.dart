import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<Map<String, dynamic>?> fetchFromOpenFoodFacts(String barcode) async {
    try {
      final url = Uri.parse(
          'https://world.openfoodfacts.org/api/v0/product/$barcode.json');

      final response = await http.get(url).timeout(const Duration(seconds: 5));

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

  static Future<Map<String, dynamic>?> fetchFromBackend(String barcode) async {
    try {
      final url = Uri.parse("http://localhost:3000/food/$barcode");

      final response = await http.get(url).timeout(const Duration(seconds: 5));

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

  static Future<Map<String, dynamic>?> fetchFood(String barcode) async {
    var result = await fetchFromOpenFoodFacts(barcode);

    if (result != null) {
      print("Using Open Food Facts");
      return result;
    } 

    print("Falling back to backend...");
    return await fetchFromBackend(barcode);
  }
}
