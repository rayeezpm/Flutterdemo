import 'package:flutter/material.dart';

class WelcomeRed extends StatefulWidget {
  const WelcomeRed({super.key});

  @override
  State<WelcomeRed> createState() => _WelcomeRedState();
}

class _WelcomeRedState extends State<WelcomeRed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.red, Colors.black])),
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 50, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                            size: 40,
                          ))
                    ],
                  )),
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                'assets/db.png',
                scale: 6,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'FITNESS CLUB',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'WELCOME BACK',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: OutlinedButton(
                    style: ButtonStyle(
                        minimumSize: WidgetStateProperty.all(
                          const Size(double.infinity, 60),
                        ),
                        side: WidgetStateProperty.all(
                            const BorderSide(color: Colors.white))),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        'SIGN IN',
                        style: TextStyle(color: Colors.white, fontSize: 33),
                      ),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: OutlinedButton(
                    style: ButtonStyle(
                        backgroundColor: const WidgetStatePropertyAll(Colors.white),
                        minimumSize: WidgetStateProperty.all(
                          const Size(double.infinity, 60),
                        ),
                        side: WidgetStateProperty.all(
                            const BorderSide(color: Colors.white))),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(color: Colors.black, fontSize: 33),
                      ),
                    )),
              ),
              const SizedBox(
                height: 120,
              ),
              const Text(
                'Login with social media',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/insta.png',
                        scale: 15,
                      )),
                  const SizedBox(
                    width: 5,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/twi.png',
                        scale: 15,
                      )),
                  const SizedBox(
                    width: 5,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/fb.png',
                        scale: 15,
                      )),
                  const SizedBox(
                    width: 5,
                  ),
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
