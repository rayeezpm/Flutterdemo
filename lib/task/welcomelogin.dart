import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WelcomeLogin extends StatefulWidget {
  const WelcomeLogin({super.key});

  @override
  State<WelcomeLogin> createState() => _WelcomeLoginState();
}

class _WelcomeLoginState extends State<WelcomeLogin> {
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController password = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  void dispose() {
    phoneNumber.dispose();
    password.dispose();
    super.dispose();
  }

  bool _pword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formkey,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
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
                            child: TextFormField(
                          controller: phoneNumber,
                          validator: (value) {
                            if (value?.length == 10) {
                              return null;
                            } else {
                              return 'Enter a valid 10 Digits Phone Number';
                            }
                          },
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          maxLength: 10,
                          buildCounter: (context,
                              {int? currentLength,
                              bool? isFocused,
                              int? maxLength}) {
                            const SizedBox.shrink();
                            return null;
                          },
                          decoration: InputDecoration(
                              focusedErrorBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.red, width: 2),
                                  borderRadius: BorderRadius.circular(20)),
                              errorBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.red, width: 2),
                                  borderRadius: BorderRadius.circular(20)),
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
                                color: Colors.blueGrey,
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
                            child: TextFormField(
                          controller: password,
                          validator: (value) {
                            if (value!.length < 8) {
                              return 'more than 8 charaters required';
                            }
                            return null;
                          },
                          obscureText: _pword,
                          decoration: InputDecoration(
                              focusedErrorBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.red, width: 2),
                                  borderRadius: BorderRadius.circular(20)),
                              errorBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.red, width: 2),
                                  borderRadius: BorderRadius.circular(20)),
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
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _pword = !_pword;
                                  });
                                },
                                child: Icon(_pword
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                              )),
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
                            padding: const EdgeInsets.only(
                                top: 32, left: 32, right: 32),
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
                                    backgroundColor: WidgetStateProperty.all(
                                        Colors.transparent),
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
                          style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _submitState() {
    if (formkey.currentState!.validate()) {
      final String phoneNumberValues = phoneNumber.text;
      final String passwordValue = password.text;
    }
  }
}
