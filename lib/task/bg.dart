import 'package:flutter/material.dart';

class Bg extends StatefulWidget {
  const Bg({super.key});

  @override
  State<Bg> createState() => _BgState();
}

class _BgState extends State<Bg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: double.infinity,width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg.jpg'), fit: BoxFit.cover)),
        child: const Text('Registration form',style: TextStyle(fontSize: 16),),
      ),
    );
  }
}
