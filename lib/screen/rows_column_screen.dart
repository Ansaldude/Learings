import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RowsAndColumnScreen extends StatelessWidget {
  const RowsAndColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rows and Column"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Flexible(
                fit: FlexFit.loose,
                child: Container(
                  height: 100,
                  alignment: Alignment.center,
                  color: Colors.blue,
                  child: const Text(
                    'Container 1',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Container(
                  width: 150,
                  height: 100,
                  alignment: Alignment.center,
                  color: Colors.red,
                  child: const Text(
                    'Container 2',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Container(
                  width: 150,
                  height: 100,
                  alignment: Alignment.center,
                  color: Colors.blue,
                  child: const Text(
                    'Container 3',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              width: double.infinity,
              height: 100,
              alignment: Alignment.center,
              color: Color.fromARGB(255, 0, 34, 255),
              child: const Text(
                'Container 1',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              width: double.infinity,
              height: 100,
              alignment: Alignment.center,
              color: Colors.blue,
              child: const Text(
                'Container 2',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              width: double.infinity,
              height: 100,
              alignment: Alignment.center,
              color: Color.fromARGB(255, 0, 34, 255),
              child: const Text(
                'Container 3',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
