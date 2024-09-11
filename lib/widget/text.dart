import 'package:flutter/material.dart';

class Textwidget extends StatefulWidget {
  const Textwidget({super.key});

  @override
  State<Textwidget> createState() => _TextwidgetState();
}

class _TextwidgetState extends State<Textwidget> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Rayeez\n Palakkad\n 9876543210',
          style: TextStyle(
              fontSize: 35, color: Colors.redAccent, fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
