import 'package:flutter/material.dart';

class WelcomeBlue extends StatefulWidget {
  const WelcomeBlue({super.key});

  @override
  State<WelcomeBlue> createState() => _WelcomeBlueState();
}

class _WelcomeBlueState extends State<WelcomeBlue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 500,
                height: 300,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/farmer.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(300, 100),
                        bottomRight: Radius.elliptical(300, 100))),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const Text(
              'Welcome Back',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 42,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Login into your account',
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
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.lock_outline_rounded,
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
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.check_box,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  'Remember me',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 75,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgotten password?',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 42, right: 42, top: 30),
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
                        'Login',
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 59, 89),
                          fontSize: 22,
                          shadows: [
                            Shadow(
                                offset: Offset(2, 1),
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
                  "Don't have an account?",
                  style: TextStyle(color: Colors.white,fontSize: 18),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,decorationColor: Colors.white,fontSize: 18),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
