import 'package:flutter/material.dart';

class listView2 extends StatefulWidget {
  const listView2({super.key});

  @override
  State<listView2> createState() => _listView2State();
}

class _listView2State extends State<listView2> {
  List<String> list1 = ['A', 'B', 'C', 'D', 'E'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: list1.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text(list1[index]),
              subtitle: Text('List${list1[index]}'),
              onTap: () {
                const Text('Tapped');
              });
        },
      ),
    );
  }
}
