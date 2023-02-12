import 'package:flutter/material.dart';
import 'package:weptoon_app/screens/home_screen.dart';

void main() {
  runApp(const App());
}

// This widget is the root of your application.
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
