import 'package:flutter/material.dart';

class listTile1 extends StatefulWidget {
  const listTile1({super.key});

  @override
  State<listTile1> createState() => _listTile1State();
}

class _listTile1State extends State<listTile1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('Star'),
            leading: const Icon(Icons.star),
            subtitle: const Text('Rating'),
            onTap: () {
              print('Star tapped');
            },
          ),
          ListTile(
            title: const Text('Safety'),
            leading: const Icon(Icons.safety_check),
            subtitle: const Text('Safety'),
            onTap: () {
              print('Safety tapped');
            },
          ),ListTile(
            title: const Text('Eye'),
            leading: const Icon(Icons.visibility),
            subtitle: const Text('Visibilty'),
            onTap: () {
              print('Visibility tapped');
            },
          ),ListTile(
            title: const Text('ABC'),
            leading: const Icon(Icons.abc),
            subtitle: const Text('ABC'),
            onTap: () {
              print('ABC tapped');
            },
          ),ListTile(
            title: const Text('Cabin'),
            leading: const Icon(Icons.cabin),
            subtitle: const Text('Cabin'),
            onTap: () {
              print('Cabin tapped');
            },
          ),ListTile(
            title: const Text('Account'),
            leading: const Icon(Icons.account_box),
            subtitle: const Text('Account'),
            onTap: () {
              print('Account tapped');
            },
          ),ListTile(
            title: const Text('Select'),
            leading: IconButton(onPressed: (){}, icon: const Icon(Icons.select_all)),
            subtitle: const Text('Select'),
            onTap: () {
              print('Account tapped');
            },
          ),
        ],
      ),
    );
  }
}
