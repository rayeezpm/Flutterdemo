import 'package:flutter/material.dart';

class VerficationOrange extends StatefulWidget {
  const VerficationOrange({super.key});

  @override
  State<VerficationOrange> createState() => _VerficationOrangeState();
}

class _VerficationOrangeState extends State<VerficationOrange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.arrow_back)),
                  const Text(
                    'Verfication',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
                  ),
                  const SizedBox(
                    width: 20,
                  )
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              const Padding(
                padding: EdgeInsets.all(22.0),
                child: Text(
                  'Enter your Verification Code',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            isDense: true,
                            contentPadding: const EdgeInsets.only(top: 50),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                    color: Colors.orange, width: 3)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                    color: Colors.orange, width: 3))),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            isDense: true,
                            contentPadding: const EdgeInsets.only(top: 50),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                    color: Colors.orange, width: 3)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                    color: Colors.orange, width: 3))),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            isDense: true,
                            contentPadding: const EdgeInsets.only(top: 50),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                    color: Colors.orange, width: 3)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                    color: Colors.orange, width: 3))),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            isDense: true,
                            contentPadding: const EdgeInsets.only(top: 50),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                    color: Colors.orange, width: 3)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                    color: Colors.orange, width: 3))),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    '04:59',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.orange, fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: RichText(
                    text: const TextSpan(
                      text: "We send verification code to your email ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.w700),
                      children: <TextSpan>[
                        TextSpan(
                            text: '\talicetom1223@gmail.com',
                            style: TextStyle(
                              color: Colors.orange,
                            )),
                        TextSpan(text: '\t\tYou can check inbox')
                      ],
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "I didn't received a code? Send again",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.orange,
                              fontSize: 20,
                              color: Colors.orange,
                              fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  )),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.orange),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Verify',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )),
              )
            ]),
          )),
    );
  }
}
