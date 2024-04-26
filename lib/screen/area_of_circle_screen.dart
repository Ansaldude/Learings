import 'package:flutter/material.dart';
import 'package:my_project/model/area_of_circle_model.dart';

class AreaOfCircleScreen extends StatefulWidget {
  const AreaOfCircleScreen({super.key});

  @override
  State<AreaOfCircleScreen> createState() => _AreaOfCircleScreenState();
}

class _AreaOfCircleScreenState extends State<AreaOfCircleScreen> {
// Delcare variables
  final mykey = GlobalKey<FormState>();
  double? radius;
  double result = 0;

  AreaOfCircle? areaOfCircle;

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
                  radius = double.parse(value);
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter radius';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  labelText: 'Enter radius',
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
                        areaOfCircle = AreaOfCircle(radius: radius!);
                        result = areaOfCircle!.area();
                      });
                    }
                  },
                  child: const Text(
                    'Calculate Area',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),

              // Display informatuion
              Text(
                'Area is : $result',
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
