import 'package:flutter/material.dart';

class Containers extends StatefulWidget {
  const Containers({super.key});

  @override
  State<Containers> createState() => _ContainersState();
}

class _ContainersState extends State<Containers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar Practice'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        leading: const Icon(Icons.home),
        actions: [
          const Icon(Icons.search),
          IconButton(onPressed: () {}, icon: const Icon(Icons.abc))
        ],
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(25))),
      ),
      body: Center(
        child: Container(
          // color: Colors.blueAccent,
          height: 300,
          // width: 150,
          width: double.infinity, //auto fill
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: Colors.red,
            border: Border.all(color: Colors.blueGrey, width: 30),
            borderRadius: BorderRadius.circular(50),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black, offset: Offset(10, 10), blurRadius: 20)
            ],
          ),
        ),
      ),
    );
  }
}
