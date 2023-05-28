import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CardChangeView extends GetView {
  const CardChangeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CardChangeView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CardChangeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  var BallNumber = 4;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [Expanded(


            child: Padding(
              padding: const EdgeInsets.all(16.0),

              child: TextButton(onPressed: () {

                setState(() {
                  BallNumber = Random().nextInt(5) +1;
                  // print('got pressed');
                });
              },
                  child: Image.asset('images/ball$BallNumber.png')),
            ))],
      ),
    );
  }
}
