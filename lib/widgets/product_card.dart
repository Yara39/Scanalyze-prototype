import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String brand;
  final String calories;

  const ProductCard({
    super.key,
    required this.name,
    required this.brand,
    required this.calories,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name,
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text("Brand: $brand"),
            Text("Calories: $calories kcal"),
          ],
        ),
      ),
    );
  }
}
