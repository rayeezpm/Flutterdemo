import 'package:flutter/material.dart';

class LoginOrange extends StatefulWidget {
  const LoginOrange({super.key});

  @override
  State<LoginOrange> createState() => _LoginOrangeState();
}

class _LoginOrangeState extends State<LoginOrange> {
  final TextEditingController emailormobile = TextEditingController();
  final TextEditingController password = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  void dispose() {
    emailormobile.dispose();
    password.dispose();
    super.dispose();
  }

  bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formkey,
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
                        'assets/Login.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Text(
                    textAlign: TextAlign.center,
                    'Login',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 32),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Let's Get Started",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Login to an account',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: TextFormField(
                        controller: emailormobile,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a valid mail';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          errorBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.red, width: 2),
                              borderRadius: BorderRadius.circular(20)),
                          focusedErrorBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.red, width: 2),
                              borderRadius: BorderRadius.circular(20)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.orange, width: 2),
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.orangeAccent, width: 2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          labelText: 'Email or Mobile',
                          labelStyle: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
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
                          child: TextFormField(
                        controller: password,
                        validator: (value) {
                          if (value == null || value.length <= 7) {
                            return 'Please enter a valid Passowrd(8 Character or more)';
                          }
                          return null;
                        },
                        obscureText: _isHidden,
                        decoration: InputDecoration(
                            errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 2),
                                borderRadius: BorderRadius.circular(20)),
                            focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 2),
                                borderRadius: BorderRadius.circular(20)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.orange, width: 2),
                                borderRadius: BorderRadius.circular(20)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.orangeAccent, width: 2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            labelText: 'Password',
                            labelStyle: const TextStyle(
                              fontSize: 20,
                            ),
                            suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _isHidden = !_isHidden;
                                  });
                                },
                                child: Icon(_isHidden
                                    ? Icons.visibility_off
                                    : Icons.visibility))),
                      ))
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(fontSize: 15),
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SizedBox(
                            width: double.infinity,
                            height: 60,
                            child: TextButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStateProperty.all(Colors.orange),
                                ),
                                onPressed: _submitState,
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
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Sign Up',
                            style:
                                TextStyle(fontSize: 13, color: Colors.orange),
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

  void _submitState() {
    if (formkey.currentState!.validate()) {
      final String emailValue = emailormobile.text;
      final String passwordValue = password.text;
    }
  }
}
