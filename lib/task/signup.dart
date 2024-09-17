
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(25),
              child: Text(
                'Sign up',
                style: TextStyle(
                    color: Color.fromARGB(255, 2, 219, 219),
                    fontSize: 52,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                          color: Colors.black12,
                          offset: Offset(2, 1),
                          blurRadius: 15)
                    ]),
              ),
            ),
            const SizedBox(height: 50),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color
                      spreadRadius: 2, // Spread radius
                      blurRadius: 8, // Blur radius
                      offset: const Offset(0, 4),
                    )
                  ]),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 8)
                  ]),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 8)
                  ]),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'repeat password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            const SizedBox(height: 50),
            const Text('sign up with these accounts'),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.ac_unit,
                  size: 40,
                  color: Colors.redAccent,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.abc_outlined,
                  size: 40,
                  color: Colors.blueAccent,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.piano_sharp,
                  size: 40,
                  color: Colors.green,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 25),
              child: Container(
                height: 70,
                width: 500,
                decoration: BoxDecoration(
                    gradient:
                        const LinearGradient(colors: [Colors.blue, Colors.cyan]),
                    borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 231, 231, 231)),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Read user license agreement ',
                  style: TextStyle(
                      color: Colors.cyanAccent,
                      fontSize: 15,
                      shadows: [
                        Shadow(
                            color: Colors.black12,
                            offset: Offset(2, 1),
                            blurRadius: 15)
                      ])),
            )
          ],
        ),
      ),
    );
  }
}
