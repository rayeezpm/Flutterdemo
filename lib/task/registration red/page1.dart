import 'package:flutter/material.dart';

class SignRed extends StatefulWidget {
  const SignRed({super.key});

  @override
  State<SignRed> createState() => _SignRedState();
}

class _SignRedState extends State<SignRed> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
bool _pword = true;
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
        child: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 10, top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        ' Hello, \n Sign in',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        width: 140,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                            size: 40,
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
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
                             TextFormField(
                          controller: email,
                          validator: (value) {
                            final emailCom =
                                RegExp(r'^[a-zA-Z0-9,_%+-]+@gmail.com$');
                            if (value == null || value.isEmpty) {
                              return 'Enter a valid Email (example@gmail.com)';
                            } else if (emailCom.hasMatch(value)) {
                              return null;
                            } else {
                              return 'Enter a valid Email (example@gmail.com)';
                            }
                          },
                              decoration: const InputDecoration(
                                  label: Text(
                                    'Gmail',
                                    style: TextStyle(
                                        color: Colors.redAccent, fontSize: 22),
                                  ),
                                  suffixIcon: Icon(Icons.check)),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            TextFormField(
                          controller: password,
                          validator: (value) {
                            if (value!.length < 8) {
                              return 'more than 8 charaters required';
                            }
                            return null;
                          },
                          obscureText: _pword,
                              decoration: InputDecoration(
                                  label: const Text(
                                    'Password',
                                    style: TextStyle(
                                        color: Colors.redAccent, fontSize: 22),
                                  ),
                                  suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _pword = !_pword;
                                  });
                                },
                                child: Icon(_pword
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                                  ))),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Forgotten Password?',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18),
                                    ))
                              ],
                            ),
                            const SizedBox(
                              height: 100,
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
                                      onPressed: _submitState,
                                      child: const Text(
                                        'SIGN IN',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 32),
                                        textAlign: TextAlign.center,
                                      )),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 100,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Text(
                                  "Don't have an account?",
                                  style: TextStyle(
                                      color: Colors.blueGrey, fontSize: 18),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'Sign up',
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
      ),
    );
  }

  void _submitState() {
    if (formkey.currentState!.validate()) {
      final String usernameValue = email.text;
      final String passwordValue = password.text;
    }
  }
}
