import 'package:flutter/material.dart';

class WelcomeLogin extends StatefulWidget {
  const WelcomeLogin({super.key});

  @override
  State<WelcomeLogin> createState() => _WelcomeLoginState();
}

class _WelcomeLoginState extends State<WelcomeLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 250,
                  height: 250,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset(
                      'assets/WL.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                        text: 'Welcome! \n to',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 42),
                        children: [
                          TextSpan(
                              text: '\tCRM.io',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 128, 233),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 42))
                        ])),
                const SizedBox(
                  height: 25,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.blue, width: 2),
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.blueAccent, width: 2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          prefixText: '+91\t',
                          labelText: 'Phone Number',
                          labelStyle: const TextStyle(
                            fontSize: 20,
                          ),
                          suffixIcon: const Icon(
                            Icons.call,
                            color: Colors.blue,
                          )),
                    ))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.blue, width: 2),
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.blueAccent, width: 2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          labelText: 'Password',
                          labelStyle: const TextStyle(
                            fontSize: 20,
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.remove_red_eye,
                                color: Colors.blue,
                              ))),
                    ))
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 32, left: 32, right: 32),
                        child: Container(
                          width: 160,
                          height: 60,
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Colors.lightBlueAccent,
                                Colors.blue
                              ]),
                              borderRadius: BorderRadius.circular(30)),
                          child: TextButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    WidgetStateProperty.all(Colors.transparent),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'I forget my password',
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    )),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Wanna try our services?',
                  style: TextStyle(color: Colors.black45),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'here you are',
                      style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
