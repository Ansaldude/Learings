import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_project/model/calculator_model.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final myKey = GlobalKey<FormState>();
  int _value = 0;
  CalculatorModel? calculatorModel;
  double? number1;
  double? number2;
  double? result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      backgroundColor: Colors.amber[100],
      body: Form(
        key: myKey,
        child: Column(
          children: [
            const SizedBox(
              height: 8.0,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red))),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Number';
                }
                return null;
              },
              onChanged: (value) {
                setState(() {
                  number1 = double.tryParse(value);
                });
              },
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red))),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter  Number';
                }
                return null;
              },
              onChanged: (value) {
                setState(() {
                  number2 = double.tryParse(value);
                });
              },
            ),
            const SizedBox(
              height: 8.0,
            ),
            Row(
              children: [
                Radio(
                    value: 1,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                      });
                    }),
                const SizedBox(height: 8),
                const Text("Addition")
              ],
            ),
            Row(
              children: [
                Radio(
                    value: 2,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                      });
                    }),
                const SizedBox(height: 8),
                const Text("Subtraction")
              ],
            ),
            Row(
              children: [
                Radio(
                    value: 3,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                      });
                    }),
                const SizedBox(height: 8),
                const Text("Multiplication")
              ],
            ),
            Row(
              children: [
                Radio(
                    value: 4,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                      });
                    }),
                const SizedBox(height: 8),
                const Text("Division")
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    if (myKey.currentState!.validate()) {
                      setState(() {
                        if (_value == 1) {
                          calculatorModel = CalculatorModel(
                              first: number1!, second: number2!);
                          result = calculatorModel?.add();
                        } else if (_value == 2) {
                          CalculatorModel(first: number1!, second: number2!);
                          result = calculatorModel?.subtraction();
                        } else if (_value == 3) {
                          CalculatorModel(first: number1!, second: number2!);
                          result = calculatorModel?.multiplication();
                        } else {
                          CalculatorModel(first: number1!, second: number2!);
                          result = calculatorModel?.division();
                        }
                      });
                    }
                  },
                  child: const Text("Calculate")),
            ),
            const SizedBox(
              height: 8,
            ),
            Text("Value is $result")
          ],
        ),
      ),
    );
  }
}
