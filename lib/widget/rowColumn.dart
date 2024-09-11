import 'package:flutter/material.dart';

class Rowcolumn extends StatefulWidget {
  const Rowcolumn({super.key});

  @override
  State<Rowcolumn> createState() => _RowcolumnState();
}

class _RowcolumnState extends State<Rowcolumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            color: Colors.purpleAccent,
            height: 200,
            width: 100,
          ),
          Container(
            color: Colors.red,
            height: 200,
            width: 100,
          ),
          Container(
            color: Colors.blue,
            height: 200,
            width: 100,
          )
        ],
      ),
    );
  }
}
