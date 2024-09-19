import 'package:flutter/material.dart';

class RegisterRed extends StatefulWidget {
  const RegisterRed({super.key});

  @override
  State<RegisterRed> createState() => _RegisterRedState();
}

class _RegisterRedState extends State<RegisterRed> {
  final TextEditingController fullname = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confiormpassword = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  @override
  void dispose() {
    fullname.dispose();
    email.dispose();
    password.dispose();
    confiormpassword.dispose();
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
                SingleChildScrollView(
                  child: Column(
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
                                controller: fullname,
                                validator: (value) {
                                  if (value == null || value.length < 4) {
                                    return 'Please enter a valid Full name(4 Character or more)';
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                    label: Text(
                                      'Full Name',
                                      style: TextStyle(
                                          color: Colors.redAccent, fontSize: 22),
                                    ),
                                    suffixIcon: Icon(Icons.check)),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              TextFormField(
                                controller: email,
                                validator: (value) {
                                  final emailCom =
                                      RegExp(r'^[a-zA-Z0-9,_%+-]+@gmail.com$');
                                  if (value == null || value.isEmpty) {
                                    return 'Enter a valid Email (example@gmail.com)';
                                  } else if (emailCom.hasMatch(value)) {
                                    return null;
                                  } else if (value.length == 10) {
                                    return null;
                                  } else {
                                    return 'Enter a valid Email (example@gmail.com)';
                                  }
                                },
                                decoration: const InputDecoration(
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
                              TextFormField(
                                controller: password,
                                validator: (value) {
                                  if (value == null || value.length <= 7) {
                                    return 'Please enter a valid Passowrd(8 Character or more)';
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
                                            : Icons.visibility))),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              TextFormField(
                                controller: confiormpassword,
                                validator: (value) {
                                  if (value == null || value == password.text) {
                                    return 'Please enter a valid Passowrd(8 Character or more)';
                                  }
                                  return null;
                                },
                                obscureText: _pword,
                                decoration: InputDecoration(
                                    label: const Text(
                                      'Confirm Password',
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
                                            : Icons.visibility))),
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
                                        onPressed: _submitState,
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
                                height: 10,
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
                  ),
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
      final String fullnameValue = email.text;
      final String emailValue = password.text;
      final String passwordValue = password.text;
      final String cpwValue = email.text;
    }
  }
}
