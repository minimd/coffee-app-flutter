import 'package:first_f/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//1- here is the star of the show.. the run app
//2- materialApp does apply the google shitty theme as default.. the buttons and line and whatever
//3- here we learned that when you hover over a widget..
//you can know what arguments it takes. here the MaterialApp wifget takes home argument that accepts a Widget
void main() {
  runApp(
    const ProviderScope(
        child: MaterialApp(
      home: Home(),
    )),
  );
}

class SandBox extends StatelessWidget {
  const SandBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('sandBox'),
          centerTitle: true,
          backgroundColor: Colors.grey[400],
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: 120,
              height: 150,
              color: const Color.fromARGB(100, 10, 100, 255),
            ),
            Container(
              width: 120,
              height: 200,
              color: const Color.fromARGB(99, 10, 255, 132),
            ),
            Container(
              width: 120,
              height: 300,
              color: const Color.fromARGB(99, 255, 169, 10),
            ),
          ],
        ));
  }
}
