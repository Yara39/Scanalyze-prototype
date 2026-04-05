import 'package:flutter/material.dart';

class AllergenTile extends StatelessWidget {
  final String allergen;

  const AllergenTile({super.key, required this.allergen});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.warning, color: Colors.orange),
      title: Text(allergen),
    );
  }
}
