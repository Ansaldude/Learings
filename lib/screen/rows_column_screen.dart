import 'package:flutter/material.dart';

class RowsAndColumnScreen extends StatelessWidget {
  const RowsAndColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rows and Column"),
        backgroundColor: Colors.blue,
      ),
      body: Row(),
    );
  }
}

