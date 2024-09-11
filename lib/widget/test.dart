import 'package:flutter/material.dart';

class Text1 extends StatefulWidget {
  const Text1({super.key});

  @override
  State<Text1> createState() => _Text1State();
}

class _Text1State extends State<Text1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Heading')),
        backgroundColor: Colors.red,
      ),
      body: const Text(
        'Hello world, welcome to flutter',
        style: TextStyle(
            fontSize: 50,
            color: Colors.purpleAccent,
            fontStyle: FontStyle.italic,
            backgroundColor: Colors.cyanAccent,
            fontWeight: FontWeight.bold,
            letterSpacing: 8,
            wordSpacing: 50,
            shadows: [
              Shadow(
                  color: Colors.blueAccent,
                  offset: Offset(2, 1),
                  blurRadius: 10)
            ]),
      ),
    );
  }
}
