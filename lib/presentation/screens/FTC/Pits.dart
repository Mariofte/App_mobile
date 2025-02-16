import 'package:flutter/material.dart';

class app_ftc_pits extends StatefulWidget {
  const app_ftc_pits({super.key});

  @override
  State<app_ftc_pits> createState() => _app_frc_pits();
}

class _app_frc_pits extends State<app_ftc_pits> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[

        Text('Registro'),

        Text('Robot'),
        Text('Preguntas')


    ],);
  }}