import 'package:app_mobile/presentation/screens/FRC/Matches.dart';
import 'package:app_mobile/presentation/screens/FRC/Pits.dart';
import 'package:app_mobile/presentation/screens/FTC/Matches.dart';
import 'package:app_mobile/presentation/screens/FTC/Pits.dart';
import 'package:app_mobile/presentation/widgets/List_Tile_Select.dart';
import 'package:app_mobile/presentation/widgets/Pages.dart';
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

        home: List_Tile_Select(
          FTC : Pages(
            Matches: app_ftc_Matches(), 
            Pits: app_ftc_pits()
            ),
          FRC : Pages(
            Matches: app_frc_matches(),
            Pits: app_frc_pits()
            )
        ),

    );
  }
}