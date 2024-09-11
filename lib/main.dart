import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              ///->set nằm 2 bên viền đth
              children: [
                boxMethod('Hello 1', Alignment.bottomRight),
                boxMethod('Hello 2', Alignment.bottomLeft),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              ///->set nằm 2 bên viền đth
              children: [
                boxMethod('Hello 3', Alignment.bottomRight),
                boxMethod('Hello 4', Alignment.bottomLeft),
              ],
            ),
          ],
        ),
        Center(child: boxMethod('Hello world', Alignment.center, true)),
      ]),
    );
  }

  Container boxMethod(String name, Alignment dicrection,
      [bool boxRadius = false]) {
    return Container(
      decoration: BoxDecoration(
        color:
            boxRadius ? const Color.fromARGB(255, 34, 221, 246) : Colors.green,
        borderRadius: BorderRadius.circular(boxRadius ? 100 : 0),
      ),
      alignment: dicrection,
      width: 160,
      height: 160,
      child: Text(
        name,
        style: const TextStyle(fontSize: 24, color: Colors.black),
      ),
    );
  }
}
