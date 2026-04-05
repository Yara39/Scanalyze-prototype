import 'dart:convert';
import 'package:http/http.dart' as http;

class IngredientService {
  static Future<List<dynamic>> fetchIngredientDetails(List<String> ingredients) async {
    try {
      final url = Uri.parse("http://localhost:3000/ingredients");

      final response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"ingredients": ingredients}),
      );

      if (response.statusCode == 200) {
        final decoded = jsonDecode(response.body);

        if (decoded is List) {
          return decoded;
        }
      }
    } catch (e) {
      print("Ingredient fetch failed: $e");
    }

    return [];
  }
}
