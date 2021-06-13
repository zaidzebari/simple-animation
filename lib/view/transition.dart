import 'package:flutter/material.dart';

class MyTransition extends StatefulWidget {
  const MyTransition({Key? key}) : super(key: key);

  @override
  _MyTransitionState createState() => _MyTransitionState();
}

class _MyTransitionState extends State<MyTransition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView(
          children: [],
        ),
      ),
    );
  }
}
