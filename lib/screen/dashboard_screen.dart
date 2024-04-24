import 'package:flutter/material.dart';
import 'package:my_project/screen/area_of_circle_screen.dart';
import 'package:my_project/screen/arithmetic_screen.dart';
import 'package:my_project/screen/simple_interest_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 36, 109, 0),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 150, 65),
        title: const Text('Dashboard'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ArithmeticScreen(),
                  ),
                );
              },
              child: const Text(
                'Arithmetic Screen',
                style: TextStyle(
                    fontSize: 25, color: Color.fromARGB(255, 3, 41, 177)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AreaOfCircleScreen(),
                  ),
                );
              },
              child: const Text(
                'Area Of Circle',
                style: TextStyle(
                    fontSize: 25, color: Color.fromARGB(255, 3, 41, 177)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SI(),
                  ),
                );
              },
              child: const Text(
                'Simple Interest',
                style: TextStyle(
                    fontSize: 25, color: Color.fromARGB(255, 30, 3, 164)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
