import 'package:flutter/material.dart';

class IngredientCard extends StatelessWidget {
  final Map<String, dynamic> ingredient;

  const IngredientCard({super.key, required this.ingredient});

  @override
  Widget build(BuildContext context) {
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
      margin: const EdgeInsets.symmetric(vertical: 6),
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
  }
}
