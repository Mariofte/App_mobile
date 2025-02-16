import 'package:flutter/material.dart';

class app_frc_matches extends StatefulWidget {
  const app_frc_matches({super.key});

  @override
  State<app_frc_matches> createState() => _app_frc_matches();
}

class _app_frc_matches extends State<app_frc_matches> {
  @override
  Widget build(BuildContext context) {
  return PageView(
    children: <Widget>[

      Text('Registro'),
      // TODO : ¿Iniciales del scouter?
      const TextField(
        decoration: InputDecoration(labelText: '¿Iniciales del scouter?',filled: true),
      ),

      // TODO : ¿Tipo de match?
      const TextField(
        decoration: InputDecoration(labelText: '¿Tipo de match?',filled: true),
      ),

      //TODO : ¿Número de match?
      const TextField(
        decoration: InputDecoration(labelText: '¿Número de match?',filled: true),
      ),

      Text('Match'),
      Text('Autonomo'),
      Text('TeleOp'),
      Text('End Game'),
      Text('Preguntas'),

    ],);
  }} 