import 'package:flutter/material.dart';

class Radio1 extends StatefulWidget {
  const Radio1({super.key});

  @override
  State<Radio1> createState() => _Radio1State();
}

class _Radio1State extends State<Radio1> {
  String? gender;
  String? marital;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Choose a Gender'),
          ListTile(
            title: const Text('Male'),
            leading: Radio(
                value: 'male',
                groupValue: gender,
                onChanged: (String? value) {
                  setState(() {
                    gender = value;
                  });
                }),
          ),
          ListTile(
            title: const Text('Female'),
            leading: Radio(
                value: 'female',
                groupValue: gender,
                onChanged: (String? value) {
                  setState(() {
                    gender = value;
                  });
                }),
          ),
          ListTile(
            title: const Text('Other'),
            leading: Radio(
                value: 'other',
                groupValue: gender,
                onChanged: (String? value) {
                  setState(() {
                    gender = value;
                  });
                }),
          ),
          const Text('Marital Status'),
          ListTile(
            title: const Text('Married'),
            leading: Radio(
                value: 'married',
                groupValue: marital,
                onChanged: (String? value) {
                  setState(() {
                    marital = value;
                  });
                }),
          ),
          ListTile(
            title: const Text('Unmarried'),
            leading: Radio(
                value: 'unmarried',
                groupValue: marital,
                onChanged: (String? value) {
                  setState(() {
                    marital = value;
                  });
                }),
          )
        ],
      ),
    );
  }
}
