import 'package:flutter/material.dart';

class Buttons1 extends StatefulWidget {
  const Buttons1({super.key});

  @override
  State<Buttons1> createState() => _Buttons1State();
}

class _Buttons1State extends State<Buttons1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
              TextButton(onPressed: () {}, child: const Text('Button1')),
              TextButton(
                  style: ButtonStyle(
                      textStyle: WidgetStateProperty.all(
                          const TextStyle(fontSize: 32)),
                      foregroundColor: WidgetStateProperty.all(Colors.cyan)),
                  onPressed: () {},
                  child: const Text('Button2')),
              TextButton.icon(
                style: ButtonStyle(
                    textStyle:
                        WidgetStateProperty.all(const TextStyle(fontSize: 32))),
                onPressed: () {},
                icon: const Icon(Icons.safety_check),
                label: const Text('Button3'),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      padding: WidgetStateProperty.all(const EdgeInsets.only(
                          left: 16, right: 16, top: 16, bottom: 16)),
                      foregroundColor: WidgetStateProperty.all(Colors.black),
                      backgroundColor: WidgetStateProperty.all(
                          const Color.fromARGB(255, 167, 192, 168)),
                      minimumSize: WidgetStateProperty.all(const Size(5, 25))),
                  onPressed: () {},
                  child: const Text('Button4')),
              OutlinedButton(onPressed: () {}, child: const Text('Button5'))
            ],
          ),
        ),
      ),
    );
  }
}
