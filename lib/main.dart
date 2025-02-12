import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'App scouting',

        theme: ThemeData(
          primaryColor: Color.fromARGB(3, 1, 19, 111)
        ),

    );
  }
}