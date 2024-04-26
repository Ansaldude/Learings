//POJO -> Plain Old Java Object
class ArithmeticModel {
  final int first;
  final int second;

  ArithmeticModel({
    required this.first,
    required this.second,
  });

  //Add
  int add() {
    return first + second;
  }
}
