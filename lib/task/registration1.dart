import 'package:flutter/material.dart';

class Registration1 extends StatefulWidget {
  const Registration1({super.key});

  @override
  State<Registration1> createState() => _Registration1State();
}

class _Registration1State extends State<Registration1> {
  final TextEditingController un = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController pw = TextEditingController();
  final TextEditingController cpw = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    un.dispose();
    email.dispose();
    pw.dispose();
    cpw.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Text(
                      'Register',
                      style:
                          TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    'Kindly fill in this form to register',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                  child: Text(
                    'Username',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: TextFormField(
                    controller: un,
                    validator: (value) {
                      if (value == null || value.length <= 3) {
                        return 'Enter a username above 4 characters';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        fillColor: Colors.black12,
                        filled: true,
                        hintText: 'Enter Username',
                        hintStyle: const TextStyle(color: Colors.grey)),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                  child: Text(
                    'Email',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextFormField(
                    controller: email,
                    validator: (value) {
                      if (value == null || value.length <= 3) {
                        return 'Enter a valid email address';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        fillColor: Colors.black12,
                        filled: true,
                        hintText: 'Enter Email',
                        hintStyle: const TextStyle(color: Colors.grey)),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                  child: Text(
                    'Password',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextFormField(
                    controller: pw,
                    validator: (value) {
                      if (value == null || value.length <= 7) {
                        return 'Enter a valid password(above 8 characters)';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        fillColor: Colors.black12,
                        filled: true,
                        hintText: 'Enter Password',
                        hintStyle: const TextStyle(color: Colors.grey)),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                  child: Text(
                    'Confirm password',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextFormField(
                    controller: cpw,
                    validator: (value) {
                      if (value == null || value == pw.text) {
                        return 'Password are not same';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        fillColor: Colors.black12,
                        filled: true,
                        hintText: 'Enter Confirm password',
                        hintStyle: const TextStyle(color: Colors.grey)),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: TextButton(
                        style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                                const Color.fromARGB(255, 0, 108, 197))),
                        onPressed: _submitState,
                        child: const Text(
                          'Register',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ))),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an acccont',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Login.',
                          style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        ))
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
    if(formKey.currentState!.validate()){
    final String unValue = un.text;
    final String emailValue = email.text;
    final String pwValue = pw.text;
    final String cpwValue = cpw.text;
  }
}
}