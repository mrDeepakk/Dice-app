import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var dic = Random().nextInt(6) + 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Center(
            child: const Text(
              "Dice",
              style: TextStyle(fontSize: 30, color: Colors.deepOrange),
            ),
          ),
        ),
        body: Container(
            color: Color.fromARGB(255, 204, 122, 97),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () =>
                        {dic = Random().nextInt(6) + 1, setState(() {})},
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Image.asset(
                        "assets/images/dice$dic.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    width: 120,
                    child: ElevatedButton(
                      onPressed: () => {
                        dic = Random().nextInt(6) + 1,
                        setState(
                          () => {},
                        )
                      },
                      child: Text(
                        "Roll Dice",
                        style:
                            TextStyle(fontSize: 20, color: Colors.deepPurple),
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
