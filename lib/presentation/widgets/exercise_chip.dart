import 'package:flutter/material.dart';

class ExerciseChip extends StatelessWidget {
  const ExerciseChip({
    super.key,
    required this.label,
    this.backgroundColor = Colors.green,
  });

  final String label;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      labelStyle: const TextStyle(fontSize: 14.0),
      backgroundColor: backgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          bottomLeft: Radius.circular(16),
        ),
      ),
      side: const BorderSide(color: Colors.grey),
    );
  }
}
