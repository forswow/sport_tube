import 'package:flutter/material.dart';

import 'custom_options_view_builder.dart';

class AutocompleteField extends StatelessWidget {
  const AutocompleteField(
      {super.key,
      required this.options,
      required this.label,
      required this.error,
      this.onSelected,
      this.initialValue});
  final List<String> options;
  final String label;
  final String error;
  final void Function(String)? onSelected;
  final String? initialValue;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Autocomplete(
        onSelected: onSelected,
        initialValue: TextEditingValue(text: initialValue ?? ''),
        fieldViewBuilder:
            (BuildContext context, controller, focusNode, onFieldSubmitted) =>
                TextFormField(
          controller: controller,
          focusNode: focusNode,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
            labelText: label,
          ),
          validator: (value) =>
              value != null && value.isNotEmpty ? null : error,
        ),
        optionsViewBuilder: (context, onSelected, options) =>
            CustomOptionsViewBuilder(
          onSelected: onSelected,
          options: options,
        ),
        optionsBuilder: (TextEditingValue textEditingValue) => options
            .where((option) => option
                .toLowerCase()
                .contains(textEditingValue.text.toLowerCase()))
            .toList(),
        displayStringForOption: (option) => option.toString(),
      ),
    );
  }
}
