import 'package:flutter/material.dart';

class Homeblue extends StatefulWidget {
  const Homeblue({super.key});

  @override
  State<Homeblue> createState() => _HomeblueState();
}

class _HomeblueState extends State<Homeblue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/blueflower.jpg'), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Plantly',
                style: TextStyle(shadows: [Shadow(color: Colors.lightBlue,offset: Offset(2, 1),blurRadius: 5)],
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "Can't seem to keep a plants alive? Let us help you change that",
                style: TextStyle(
                    color: Color.fromARGB(255, 118, 188, 220),
                    fontSize: 20,
                    shadows: [
                      Shadow(
                          offset: Offset(2, 1),
                          color: Colors.blueAccent,
                          blurRadius: 3)
                    ]),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 400,
              ),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [Color.fromARGB(255, 2, 46, 83), Colors.blue]),
                    borderRadius: BorderRadius.circular(30)),
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              OutlinedButton(
                  style: ButtonStyle(
                      side: const WidgetStatePropertyAll(
                          BorderSide(color: Colors.blue)),
                      backgroundColor:
                          WidgetStateProperty.all(Colors.transparent),
                      minimumSize: WidgetStateProperty.all(
                        const Size(double.infinity, 60),
                      )),
                  onPressed: () {},
                  child: const Text(
                    'Sign up',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
