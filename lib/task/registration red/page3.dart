import 'package:flutter/material.dart';

class RegisterRed extends StatefulWidget {
  const RegisterRed({super.key});

  @override
  State<RegisterRed> createState() => _RegisterRedState();
}

class _RegisterRedState extends State<RegisterRed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.red, Color.fromARGB(255, 0, 1, 21)],
        )),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      ' Create Your \n Account',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          fontWeight: FontWeight.w700),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 70, left: 60),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                            size: 40,
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 53,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 660,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 50, left: 25, right: 25),
                      child: Column(
                        children: [
                          const TextField(
                            decoration: InputDecoration(
                                label: Text(
                                  'Username',
                                  style: TextStyle(
                                      color: Colors.redAccent, fontSize: 22),
                                ),
                                suffixIcon: Icon(Icons.check)),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                                label: Text(
                                  'Phone or Email',
                                  style: TextStyle(
                                      color: Colors.redAccent, fontSize: 22),
                                ),
                                suffixIcon: Icon(Icons.check)),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                label: const Text(
                                  'Password',
                                  style: TextStyle(
                                      color: Colors.redAccent, fontSize: 22),
                                ),
                                suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.remove_red_eye))),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                label: const Text(
                                  'Confirm Password',
                                  style: TextStyle(
                                      color: Colors.redAccent, fontSize: 22),
                                ),
                                suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.remove_red_eye))),
                          ),
                          const SizedBox(
                            height: 70,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 80,
                                width: 350,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    gradient: const LinearGradient(colors: [
                                      Colors.red,
                                      Color.fromARGB(255, 0, 1, 21)
                                    ])),
                                child: TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'SIGN UP',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 32),
                                      textAlign: TextAlign.center,
                                    )),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                "Already have account?",
                                style: TextStyle(
                                    color: Colors.blueGrey, fontSize: 18),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'Sign in',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
