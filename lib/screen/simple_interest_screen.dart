import 'package:flutter/material.dart';
import 'package:my_project/model/simple_interest_model.dart';

class SI extends StatefulWidget {
  const SI({super.key});

  @override
  State<SI> createState() => _SIState();
}

class _SIState extends State<SI> {
// Delcare variables
  final mykey = GlobalKey<FormState>();
  double? principle;
  double? rate;
  double? time;
  double result = 0;

  SimpleModel? simpleModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text("Simple Interest"),
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
                  principle = double.parse(value);
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Principle';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter principle',
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                onChanged: (value) {
                  rate = double.parse(value);
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Rate';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Rate',
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                onChanged: (value) {
                  time = double.parse(value);
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Time';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Time',
                ),
              ),
              // Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (mykey.currentState!.validate()) {
                      setState(() {
                        simpleModel = SimpleModel(
                            principle: principle!, rate: rate!, time: time!);
                        result = simpleModel!.calculateSI();
                      });
                    }
                  },
                  child: const Text(
                    'calculate',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),

              // Display informatuion
              Text(
                'The Simple Interest is : $result',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              RichText(
                text: const TextSpan(
                  text: 'Hello',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'bold',
                      style: TextStyle(
                        backgroundColor: Color.fromARGB(255, 45, 85, 22),
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,
                      ),
                    ),
                    TextSpan(text: 'World!')
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: const TextSpan(
                  text: 'M',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 0, 0),
                    fontSize: 30,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "y name is Ansal Subedi",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
