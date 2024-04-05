import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:sport_tube/domain/extensions/format_double_extension.dart';

class DecimalField extends StatelessWidget {
  const DecimalField({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
  })  : minValue = 0,
        maxValue = 59;

  final String label;
  final int minValue;
  final int maxValue;
  final double value;
  final ValueChanged<double> onChanged;
  @override
  Widget build(BuildContext context) {
    final int intValue = value.floor();
    final int decimalValue = ((value - intValue) * 60).round();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(child: Center(child: Text(label))),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            NumberPicker(
              minValue: minValue,
              maxValue: maxValue,
              value: intValue,
              onChanged: _onMinuteChanged,
              itemHeight: 40,
              itemWidth: 40,
            ),
            const Text(':'),
            NumberPicker(
              minValue: minValue,
              maxValue: maxValue,
              value: decimalValue,
              onChanged: _onSecondChanged,
              itemHeight: 40,
              step: 10,
              itemWidth: 40,
            ),
          ]),
        ],
      ),
    );
  }

  void _onMinuteChanged(int value) => _updateSelectedTime(minute: value);

  void _onSecondChanged(int value) => _updateSelectedTime(seconds: value);

  void _updateSelectedTime({int? minute, int? seconds}) {
    final intValue = value.floor();
    final double decimalPart =
        (seconds ?? ((value - intValue) * 60).round()) / 60.0;
    final double newValue = (minute ?? intValue) + decimalPart;
    onChanged.call(newValue.formatDouble());
  }
}
