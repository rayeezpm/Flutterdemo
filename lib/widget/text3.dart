import 'package:flutter/material.dart';

class Text3 extends StatefulWidget {
  const Text3({super.key});

  @override
  State<Text3> createState() => _Text3State();
}

class _Text3State extends State<Text3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Flutter'),
        backgroundColor: Colors.yellowAccent,
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.settings), onPressed: () {})
        ],
      ),
      body: const Center(
        child: Text('Hello, Welcome to Flutter!',
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent)),
      ),
    );
  }
}
