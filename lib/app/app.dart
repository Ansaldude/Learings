import 'package:flutter/material.dart';
import 'package:my_project/screen/flexible_expanded_screen.dart';

// import 'package:my_project/screen/column_screen.dart';
// import 'package:my_project/screen/dashboard_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FlexibleExpandedScreen(),
    );
  }
}
