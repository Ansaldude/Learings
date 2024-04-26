import 'package:flutter/material.dart';
import 'package:my_project/model/arithmetic_model.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
// Delcare variables
  final mykey = GlobalKey<FormState>();
  int? first;
  int? second;
  int result = 0;

  ArithmeticModel? arithmeticModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text("Arithmetic"),
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: mykey,
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) {
                  first = int.parse(value);
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter first No';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter First No',
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                onChanged: (value) {
                  second = int.parse(value);
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Second No';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Second No',
                ),
              ),
              const SizedBox(height: 8),
              // Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    //check for validaton
                    if (mykey.currentState!.validate()) {
                      setState(() {
                        arithmeticModel =
                            ArithmeticModel(first: first!, second: second!);
                        result = arithmeticModel!.add();
                      });
                    }
                  },
                  child: const Text(
                    'Add',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),

              // Display informatuion
              Text(
                'Sum is : $result',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
