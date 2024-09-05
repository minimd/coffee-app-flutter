import 'package:first_f/coffee_preds.dart';
// import 'package:first_f/provider/mainProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter/material.dart';

//5- write stl to auto suggest stateless widgets
class Home extends ConsumerWidget {
  //6-this key thing is important so the parent class can identify the child class
  // it is a unique key that refers to this widget
  const Home({super.key});

//7- alright. what is your widget ? a text ? an image ? a column full of button?
// rock and roll!
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //8= container is cute.. it takes the whole space if it has no child.. or the child
    //space only if it has.
    return Scaffold(
      //4- a scaffold is another champ that we need to apply the theme and store the contain the children.
      appBar: AppBar(
        title: const Text('sui'),
        backgroundColor: const Color.fromARGB(255, 47, 25, 3),
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 30),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.brown[200],
            child: const Text('how i like my coffee...'),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.brown[500],
            child: const CoffeePrefs(),
          ),
          //11- expanded is just like flex in css.. it takes the available space and restrict the inner child to that space
          Expanded(
            child: Image.asset(
              'assets/coffee_bg.jpg',
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter,
            ),
          )
        ],
      ),
    );

    //  Container(
    //   color: Colors.red,
    //   width: 300,
    //   height: 350,
    //   padding: const EdgeInsets.all(29),
    //   margin: const EdgeInsets.fromLTRB(100, 0, 0, 0),

    //   //9- the child should be the last item in a widget.. this iss a best practice
    //   child: const Text(
    //     'the best container ever made',
    //     style: TextStyle(
    //       fontSize: 23,
    //       color: Colors.white,
    //       letterSpacing: 3,
    //       decoration: TextDecoration.lineThrough,
    //       fontStyle: FontStyle.italic,
    //     ),
    //   ),
    // );
  }
}
