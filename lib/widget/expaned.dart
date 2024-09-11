import 'package:flutter/material.dart';

class Expanded1 extends StatefulWidget {
  const Expanded1({super.key});

  @override
  State<Expanded1> createState() => _Expanded1State();
}

class _Expanded1State extends State<Expanded1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(flex: 1,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  padding: const EdgeInsets.all(20),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(flex: 2,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                  padding: const EdgeInsets.all(20),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(flex: 3,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  padding: const EdgeInsets.all(20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
