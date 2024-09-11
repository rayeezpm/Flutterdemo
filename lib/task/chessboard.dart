import 'package:flutter/material.dart';

class Chessboard extends StatefulWidget {
  const Chessboard({super.key});

  @override
  State<Chessboard> createState() => _ChessboardState();
}

class _ChessboardState extends State<Chessboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Chessboard'),
          backgroundColor: Colors.grey,
        ),
        body: Center(
          child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black12, width: 10),
                  boxShadow: const [
                    BoxShadow(color: Colors.brown, blurRadius: 10)
                  ]),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            width: 45,
                            height: 45,
                            color: Colors.black,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 45,
                            height: 45,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 45,
                            height: 45,
                            color: Colors.black,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 45,
                            height: 45,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 45,
                            height: 45,
                            color: Colors.black,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 45,
                            height: 45,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 45,
                            height: 45,
                            color: Colors.black,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 45,
                            height: 45,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 0),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: 45,
                                height: 45,
                                color: Colors.white,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 45,
                                height: 45,
                                color: Colors.black,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 45,
                                height: 45,
                                color: Colors.white,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 45,
                                height: 45,
                                color: Colors.black,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 45,
                                height: 45,
                                color: Colors.white,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 45,
                                height: 45,
                                color: Colors.black,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 45,
                                height: 45,
                                color: Colors.white,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 45,
                                height: 45,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 0,
                ),
                Column(mainAxisSize: MainAxisSize.min, children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              width: 45,
                              height: 45,
                              color: Colors.black,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: 45,
                              height: 45,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: 45,
                              height: 45,
                              color: Colors.black,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: 45,
                              height: 45,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: 45,
                              height: 45,
                              color: Colors.black,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: 45,
                              height: 45,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: 45,
                              height: 45,
                              color: Colors.black,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: 45,
                              height: 45,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 0),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  width: 45,
                                  height: 45,
                                  color: Colors.white,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 45,
                                  height: 45,
                                  color: Colors.black,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 45,
                                  height: 45,
                                  color: Colors.white,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 45,
                                  height: 45,
                                  color: Colors.black,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 45,
                                  height: 45,
                                  color: Colors.white,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 45,
                                  height: 45,
                                  color: Colors.black,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 45,
                                  height: 45,
                                  color: Colors.white,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 45,
                                  height: 45,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 0,
                  ),
                  Column(mainAxisSize: MainAxisSize.min, children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: 45,
                                height: 45,
                                color: Colors.black,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 45,
                                height: 45,
                                color: Colors.white,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 45,
                                height: 45,
                                color: Colors.black,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 45,
                                height: 45,
                                color: Colors.white,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 45,
                                height: 45,
                                color: Colors.black,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 45,
                                height: 45,
                                color: Colors.white,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 45,
                                height: 45,
                                color: Colors.black,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 45,
                                height: 45,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 0),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 45,
                                    height: 45,
                                    color: Colors.white,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: 45,
                                    height: 45,
                                    color: Colors.black,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: 45,
                                    height: 45,
                                    color: Colors.white,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: 45,
                                    height: 45,
                                    color: Colors.black,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: 45,
                                    height: 45,
                                    color: Colors.white,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: 45,
                                    height: 45,
                                    color: Colors.black,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: 45,
                                    height: 45,
                                    color: Colors.white,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: 45,
                                    height: 45,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 0,
                    ),
                    Column(mainAxisSize: MainAxisSize.min, children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  width: 45,
                                  height: 45,
                                  color: Colors.black,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 45,
                                  height: 45,
                                  color: Colors.white,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 45,
                                  height: 45,
                                  color: Colors.black,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 45,
                                  height: 45,
                                  color: Colors.white,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 45,
                                  height: 45,
                                  color: Colors.black,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 45,
                                  height: 45,
                                  color: Colors.white,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 45,
                                  height: 45,
                                  color: Colors.black,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 45,
                                  height: 45,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 0),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: 45,
                                      height: 45,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: 45,
                                      height: 45,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: 45,
                                      height: 45,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: 45,
                                      height: 45,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: 45,
                                      height: 45,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: 45,
                                      height: 45,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: 45,
                                      height: 45,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: 45,
                                      height: 45,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ])
                  ])
                ])
              ])),
        ));
  }
}
