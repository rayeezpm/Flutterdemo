import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Registerorange extends StatefulWidget {
  const Registerorange({super.key});

  @override
  State<Registerorange> createState() => _RegisterorangeState();
}

class _RegisterorangeState extends State<Registerorange> {
  final TextEditingController fullname = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  void dispose() {
    fullname.dispose();
    email.dispose();
    phoneNumber.dispose();
    super.dispose();
  }
@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formkey,
            child: SingleChildScrollView(
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      textAlign: TextAlign.center,
                      'Register',
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
                          'Create an account',
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
                          controller: fullname,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter an Full Name';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            focusedErrorBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.red, width: 2),
                                borderRadius: BorderRadius.circular(20)),
                            errorBorder: OutlineInputBorder(
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
                            labelText: 'Full Name',
                            labelStyle: const TextStyle(
                              fontSize: 20,
                            ),
                            hintText: 'Ex . Alice Tom',
                            hintStyle: const TextStyle(color: Colors.grey),
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
                          controller: email,
                          validator: (value) {
                            if (value == null || value.length <= 4) {
                              return 'Enter a valid Email';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            focusedErrorBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.red, width: 2),
                                borderRadius: BorderRadius.circular(20)),
                            errorBorder: OutlineInputBorder(
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
                            labelText: 'Email',
                            labelStyle: const TextStyle(
                              fontSize: 20,
                            ),
                            hintText: 'Ex. abc@email.com',
                            hintStyle: const TextStyle(color: Colors.grey),
                          ),
                        ))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                        '---------------------------------------or---------------------------------------'),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: TextFormField(
                          controller: phoneNumber,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          validator: (value) {
                            if (value?.length == 10) {
                              return null;
                            } else {
                              return 'Enter a valid 10 Digits Phone Number';
                            }
                          },
                          decoration: InputDecoration(
                            focusedErrorBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.red, width: 2),
                                borderRadius: BorderRadius.circular(20)),
                            errorBorder: OutlineInputBorder(
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
                            labelText: 'Phone Number',
                            labelStyle: const TextStyle(
                              fontSize: 20,
                            ),
                            hintText: 'Ex. 9876543210',
                            hintStyle: const TextStyle(color: Colors.grey),
                            prefixText: '+91  ',
                            prefixStyle:
                                const TextStyle(fontWeight: FontWeight.bold),
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
                                    'Register',
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
                          'Already have account?',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Sign In',
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
      ),
    );
  }

  void _submitState() {
    if (formkey.currentState!.validate()) {
      final String fullnameValue = fullname.text;
      final String emailValue = email.text;
      final String phoneNumberalue = phoneNumber.text;
    }
  }
}
