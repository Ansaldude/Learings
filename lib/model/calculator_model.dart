class CalculatorModel {
  final double? first;
  final double? second;

  CalculatorModel({
    required this.first,
    required this.second,
  });

  double add() {
    return first! + second!;
  }

  double subtraction() {
    return first! - second!;
  }

  double multiplication() {
    return first! * second!;
  }

  double division() {
    return first! / second!;
  }
}
