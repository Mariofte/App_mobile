import 'package:flutter/material.dart';

class app_frc_pits extends StatelessWidget {
  const app_frc_pits({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: TextOverflow.fade,
      maxLines: 1,
      'App Pits FRC'
      );
  }
}