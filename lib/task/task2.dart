import 'package:flutter/material.dart';

class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task 2'),
      ),
      body: Column(
        children: [
          const Column(
            children: [
              Text(
                'Hello, World!',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Welcome to Flutter!',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                padding: const EdgeInsets.all(20),
              ),
              const SizedBox(width: 10),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
                padding: const EdgeInsets.all(20),
              ),
              const SizedBox(width: 10),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                padding: const EdgeInsets.all(20),
              ),
            ],
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Flutter is fun!',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Let\'s build apps!',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
