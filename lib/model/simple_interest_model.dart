class SimpleModel {
  final double principle;
  final double rate;
  final double time;

  SimpleModel({
    required this.principle,
    required this.rate,
    required this.time,
  });

  //Add
  double calculateSI() {
    return ((principle * rate * time) / 100);
  }
}
