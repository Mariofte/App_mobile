import 'package:flutter/material.dart';

class app_frc_matches extends StatelessWidget {
  const app_frc_matches({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: TextOverflow.fade,
      maxLines: 1,
      'App Matches FRC'
      );
  }
}