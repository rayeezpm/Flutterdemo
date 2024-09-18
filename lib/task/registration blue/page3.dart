import 'package:flutter/material.dart';

class RegisterBlue extends StatefulWidget {
  const RegisterBlue({super.key});

  @override
  State<RegisterBlue> createState() => _RegisterBlueState();
}

class _RegisterBlueState extends State<RegisterBlue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 51, 139),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Container(
          height: 500,
          width: 500,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/leaf.png',
                  ),
                  fit: BoxFit.fill)),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_circle_left_outlined,
                                size: 50,
                                color: Colors.white,
                              ))
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 75,
                  ),
                  const Text(
                    'Register',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 42,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Create your account',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Colors.white,
                            Color.fromARGB(255, 76, 131, 225)
                          ]),
                          borderRadius: BorderRadius.circular(5)),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.account_circle,
                              color: Colors.blueGrey,
                            ),
                            hintText: 'Username',
                            hintStyle: const TextStyle(color: Colors.blueGrey),
                            fillColor: Colors.transparent,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(5)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Colors.white,
                            Color.fromARGB(255, 76, 131, 225)
                          ]),
                          borderRadius: BorderRadius.circular(5)),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.mail_outline,
                              color: Colors.blueGrey,
                            ),
                            hintText: 'Email',
                            hintStyle: const TextStyle(color: Colors.blueGrey),
                            fillColor: Colors.transparent,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(5)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Colors.white,
                            Color.fromARGB(255, 76, 131, 225)
                          ]),
                          borderRadius: BorderRadius.circular(5)),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.password_outlined,
                              color: Colors.blueGrey,
                            ),
                            hintText: 'Password',
                            hintStyle: const TextStyle(color: Colors.blueGrey),
                            fillColor: Colors.transparent,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(5)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Colors.white,
                            Color.fromARGB(255, 76, 131, 225)
                          ]),
                          borderRadius: BorderRadius.circular(5)),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.password_outlined,
                              color: Colors.blueGrey,
                            ),
                            hintText: 'Repeat Password',
                            hintStyle: const TextStyle(color: Colors.blueGrey),
                            fillColor: Colors.transparent,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(5)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'By registering, you are agreeing to our \n Terms of use and Privacy Policy.',
                        style: TextStyle(color: Colors.white),
                      ),
                      
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 42, right: 42, top: 30),
                    child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(colors: [
                              Colors.white,
                              Color.fromARGB(255, 76, 131, 225)
                            ]),
                            borderRadius: BorderRadius.circular(25)),
                        child: ElevatedButton(
                            style: const ButtonStyle(
                                backgroundColor:
                                    WidgetStatePropertyAll(Colors.transparent),
                                shadowColor:
                                    WidgetStatePropertyAll(Colors.transparent)),
                            onPressed: () {},
                            child: const Text(
                              'Register',
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 59, 89),
                                fontSize: 22,
                                shadows: [
                                  Shadow(
                                      offset: Offset(1, 1),
                                      color: Colors.black,
                                      blurRadius: 2)
                                ],
                                backgroundColor: Colors.transparent,
                              ),
                            ))),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Sign in',
                            style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.white,
                                fontSize: 18),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
