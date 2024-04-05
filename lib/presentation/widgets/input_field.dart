import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

import 'package:sport_tube/presentation/widgets/decimal_field.dart';

class InputField<T> extends StatefulWidget {
  const InputField({
    super.key,
    required this.label,
    this.initialValue,
    this.onChanged,
    this.keyboardType,
  })  : maxLines = 1,
        isNumeric = false,
        isDecimel = false;

  ///Расширяемый textfield
  const InputField.max({
    super.key,
    required this.label,
    this.initialValue,
    this.onChanged,
    this.keyboardType,
  })  : maxLines = null,
        isNumeric = false,
        isDecimel = false;
  const InputField.numeric({
    super.key,
    required this.label,
    this.initialValue,
    this.onChanged,
    this.keyboardType,
  })  : maxLines = 1,
        isNumeric = true,
        isDecimel = false;
  const InputField.decimel({
    super.key,
    required this.label,
    this.initialValue,
    this.onChanged,
    this.keyboardType,
  })  : maxLines = 1,
        isNumeric = false,
        isDecimel = true;
  final int? maxLines;
  final String label;
  final T? initialValue;
  final ValueChanged<T>? onChanged;
  final TextInputType? keyboardType;
  final bool isNumeric;
  final bool isDecimel;
  @override
  State<InputField<T>> createState() => _InputFieldState();
}

class _InputFieldState<T> extends State<InputField<T>> {
  int? get maxLines => widget.maxLines;
  TextInputType? get keyboardType => widget.keyboardType;
  String get label => widget.label;
  bool get isNumeric => widget.isNumeric;
  bool get isDecimel => widget.isDecimel;
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.initialValue?.toString());
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Widget child = isNumeric
        ? Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Text(
                    label,
                  ),
                ),
                NumberPicker(
                    value: (widget.initialValue as int?) ?? 0,
                    minValue: 0,
                    maxValue: 100,
                    step: 1,
                    itemWidth: 50,
                    axis: Axis.horizontal,
                    onChanged: (val) => widget.onChanged?.call(val as T),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.black26),
                    )),
              ],
            ),
          )
        : isDecimel
            ? DecimalField(
                label: label,
                value: (widget.initialValue as double?) ?? 0,
                onChanged: (val) => widget.onChanged?.call(val as T),
              )
            : TextFormField(
                maxLines: maxLines,
                controller: controller,
                keyboardType: keyboardType,
                decoration: InputDecoration(
                  label: Text(label),
                  border: const OutlineInputBorder(),
                ),
                onChanged: (val) => widget.onChanged?.call(val as T),
              );
    return Card(child: child);
  }
}
