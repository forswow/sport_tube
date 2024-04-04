import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  const InputField({
    super.key,
    required this.label,
    this.initialValue,
    this.onChanged,
  }) : maxLines = 1;

  ///Расширяемый textfield
  const InputField.max({
    super.key,
    required this.label,
    this.initialValue,
    this.onChanged,
  }) : maxLines = null;
  final int? maxLines;
  final String label;
  final String? initialValue;
  final void Function(String)? onChanged;
  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  String? get initialValue => widget.initialValue;
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: initialValue);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        child: TextFormField(
      maxLines: widget.maxLines,
      controller: controller,
      decoration: InputDecoration(
        label: Text(widget.label),
        border: const OutlineInputBorder(),
      ),
      onChanged: widget.onChanged,
    ));
  }
}
