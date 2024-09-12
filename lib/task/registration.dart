import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg.jpg'), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 100,
            left: 25,
            right: 25,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text('Registration Form',
                    style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 0, 140, 255),
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(color: Colors.black, offset: Offset(2, 1))
                        ])),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Username',
                          hintStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 68, 131, 239)),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Fullname',
                          hintStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 68, 131, 239)),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Country',
                          hintStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 68, 131, 239)),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'E-mail',
                          hintStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 68, 131, 239)),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Phone number',
                          hintStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 68, 131, 239)),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Gender',
                      style: TextStyle(
                          color: Colors.lightBlue,
                          fontSize: 20,
                          shadows: [
                            Shadow(offset: Offset(2, 1), color: Colors.blue)
                          ]),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    TextButton(
                        style: ButtonStyle(
                            textStyle: WidgetStateProperty.all(
                                const TextStyle(fontSize: 25)),
                            backgroundColor: WidgetStateProperty.all(
                                const Color.fromARGB(255, 68, 131, 239))),
                        onPressed: () {},
                        child: const Text('Male',
                            style: TextStyle(color: Colors.white))),
                    const SizedBox(
                      width: 5,
                    ),
                    TextButton(
                        style: ButtonStyle(
                            textStyle: WidgetStateProperty.all(
                                const TextStyle(fontSize: 25)),
                            backgroundColor: WidgetStateProperty.all(
                                const Color.fromARGB(255, 68, 131, 239))),
                        onPressed: () {},
                        child: const Text('Female',
                            style: TextStyle(color: Colors.white)))
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Date of birth',
                      style: TextStyle(
                          color: Colors.lightBlue,
                          fontSize: 20,
                          shadows: [
                            Shadow(offset: Offset(2, 1), color: Colors.blue)
                          ]),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                          hintText: 'DD',
                          hintStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          fillColor: const Color.fromARGB(255, 68, 131, 239),
                          filled: true),
                      textAlign: TextAlign.center,
                    )),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                          hintText: 'MM',
                          hintStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          fillColor: const Color.fromARGB(255, 68, 131, 239),
                          filled: true),
                      textAlign: TextAlign.center,
                    )),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                          hintText: 'YY',
                          hintStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          fillColor: const Color.fromARGB(255, 68, 131, 239),
                          filled: true),
                      textAlign: TextAlign.center,
                    ))
                  ],
                ),
                const SizedBox(
                  height: 19,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.check_circle),
                    Text('Agree with terms and conditions')
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                        child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 68, 131, 239)),
                      textAlign: TextAlign.center,
                    ))
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                                const Color.fromARGB(255, 25, 109, 255))),
                        onPressed: () {},
                        child: const Text(
                          'Create account',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
