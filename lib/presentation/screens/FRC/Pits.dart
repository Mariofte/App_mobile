import 'package:flutter/material.dart';

class app_frc_pits extends StatefulWidget {
  const app_frc_pits({super.key});

  @override
  State<app_frc_pits> createState() => _app_frc_pits();
}

class _app_frc_pits extends State<app_frc_pits> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[

        Text('Registro'),
        // ¿Iniciales del scouter?
        const TextField(
          decoration: InputDecoration(labelText: '¿Iniciales del scouter?',filled: true),
        ),

        // ¿Tipo de match?
        const TextField(
          decoration: InputDecoration(labelText: '¿Tipo de match?',filled: true),
        ),

        // ¿Número de match?
        const TextField(
          decoration: InputDecoration(labelText: '¿Número de match?',filled: true),
        ),

        Text('Robot'),
        Text('Preguntas'),

      ],);
  }}