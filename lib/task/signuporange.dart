import 'package:flutter/material.dart';

class SignupOrange extends StatefulWidget {
  const SignupOrange({super.key});

  @override
  State<SignupOrange> createState() => _SignupOrangeState();
}

class _SignupOrangeState extends State<SignupOrange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Create an account',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const TextField(
                decoration: InputDecoration(
                    hintText: 'Username',
                    hintStyle: TextStyle(color: Colors.blueGrey, fontSize: 22)),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.close_outlined,
                    color: Colors.redAccent,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'A minimum of 4 Characters',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 20),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.blueGrey, fontSize: 22)),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.lock_open_outlined,
                    color: Colors.redAccent,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'A minimum of 8 Characters',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 20),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.lock_open_outlined,
                    color: Colors.redAccent,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'One uppercase letter',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 20),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(color: Colors.blueGrey, fontSize: 22)),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.close_outlined,
                    color: Colors.redAccent,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Your confirm password should\n be the same as password',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [Colors.deepOrange, Colors.orangeAccent]),
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                    style: ButtonStyle(
                        minimumSize:
                            WidgetStateProperty.all(const Size(double.infinity, 70))),
                    onPressed: () {},
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w600),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Sign in',
                        style: TextStyle(color: Colors.orange, fontSize: 20,fontWeight: FontWeight.w700),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
