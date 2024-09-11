import 'package:flutter/material.dart';

class Images1 extends StatefulWidget {
  const Images1({super.key});

  @override
  State<Images1> createState() => _Images1State();
}

class _Images1State extends State<Images1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Images'),
      ),
      body: Column(
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.grey,
            padding: const EdgeInsets.all(10),
            child: Image.asset('assets/Cat03.jpg'),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 350,
            height: 350,
            color: Colors.grey,
            padding: const EdgeInsets.all(10),
            child: Image.network(
              'https://t3.ftcdn.net/jpg/06/58/19/90/360_F_658199067_9iSrD3PCb62HcjYcQmdNMbAP2tNVoG97.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
