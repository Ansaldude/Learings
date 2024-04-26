import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('Column'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('button1')),
            ElevatedButton(onPressed: () {}, child: const Text('button2')),
            ElevatedButton(onPressed: () {}, child: const Text('button3')),
          ],
        ),
      ),
    );
  }
}
