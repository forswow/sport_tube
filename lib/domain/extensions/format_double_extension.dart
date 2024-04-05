extension FormatDouble on double {
  double formatDouble() {
    String formattedValue = toStringAsFixed(2);
    if (formattedValue.endsWith('.00')) {
      formattedValue = formattedValue.substring(0, formattedValue.length - 3);
    } else if (formattedValue.endsWith('0')) {
      formattedValue = formattedValue.substring(0, formattedValue.length - 1);
    }
    return double.parse(formattedValue);
  }
}
