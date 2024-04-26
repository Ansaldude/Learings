import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // child: Center(
        //   child: Container(
        //     width: 200,
        //     height: 200,
        //     alignment: Alignment.center,
        //     child: const Text('I am a container'),
        //     decoration: BoxDecoration(
        //         shape: BoxShape.circle,
        //         color: Colors.blue,
        //         border: Border.all(
        //           color: Colors.deepOrange,
        //           width: 10,
        //         )),
        //   ),
        // ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.centerRight,
          child: const Text('Hello',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          
        ),
      ),
    );
  }
}
