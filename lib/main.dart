
// ignore_for_file: unused_import

import 'package:demoproject/task/registration%20blue/page1.dart';
import 'package:demoproject/task/registration%20blue/page2.dart';
import 'package:demoproject/task/registration%20blue/page3.dart';
import 'package:demoproject/task/registration%20orange/page1.dart';
import 'package:demoproject/task/registration%20orange/page2.dart';
import 'package:demoproject/task/registration%20red/page1.dart';
import 'package:demoproject/task/registration%20red/page3.dart';
import 'package:demoproject/task/registration.dart';
import 'package:demoproject/task/registration1.dart';
import 'package:demoproject/task/signuporange.dart';
import 'package:demoproject/task/welcomelogin.dart';
import 'package:demoproject/widget/checkbox.dart';
import 'package:demoproject/widget/listtile.dart';
import 'package:demoproject/widget/listview1.dart';
import 'package:demoproject/widget/radio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CheckBox1(),
    );
  }
}

