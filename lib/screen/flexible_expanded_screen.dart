import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_project/common/my_snackbar.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              alignment: Alignment.center,
              height: 400,
              width: double.infinity,
              color: const Color.fromARGB(255, 153, 247, 156),
              child: ElevatedButton(
                onPressed: () {
                  showSnackBar(
                    message: "Hello World",
                    context: context,
                    color: Colors.green,
                  );
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   const SnackBar(
                  //     backgroundColor: Colors.green,
                  //     behavior: SnackBarBehavior.floating,
                  //     content: Text('Hello World'),
                  //     duration: Duration(seconds: 3),
                  //   ),
                  // );
                },
                child: const Text('Hello'),
              ),
            ),
          ),
          Flexible(
            // fit: FlexFit.loose,
            fit: FlexFit.tight,
            child: Container(
              alignment: Alignment.center,
              height: 200,
              width: double.infinity,
              color: const Color.fromARGB(255, 218, 145, 139),
              child: ElevatedButton(
                onPressed: () {
                  showSnackBar(
                    message: "Bye World",
                    context: context,
                    color: Colors.red,
                  );
                },
                child: const Text('Bye'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
