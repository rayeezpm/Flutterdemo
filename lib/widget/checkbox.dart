import 'package:flutter/material.dart';

class CheckBox1 extends StatefulWidget {
  const CheckBox1({super.key});

  @override
  State<CheckBox1> createState() => _CheckBox1State();
}

class _CheckBox1State extends State<CheckBox1> {
  bool? isChecked1 = false;
  bool? isChecked2 = false;
  bool? isChecked3 = false;
  bool? isChecked4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
              checkColor: Colors.red,
              activeColor: Colors.green,
              tristate: true,
              value: isChecked1,
              onChanged: (value) {
                setState(() {
                  isChecked1 = value;
                });
              }),
          CheckboxListTile(
              value: isChecked2,
              tristate: true,
              checkColor: Colors.red,
              tileColor: Colors.blue,
              title: const Text('One'),
              subtitle: const Text('Checkbox 1'),
              onChanged: (value) {
                setState(() {
                  isChecked2 = value;
                });
              })
        ],
      ),
    );
  }
}
