import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final int index;
  final String title;
  const DetailScreen({this.index, this.title});
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Hero(
              tag: "${widget.index}",
              child: Material(
                child: Text(
                  widget.title,
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TweenAnimationBuilder(
              duration: const Duration(seconds: 1),
              tween: Tween(begin: 1.0, end: 0.0),
              //optional for you
              curve: Curves.bounceInOut,
              child: Text(
                'this is just simple description for the text i hope this work for me fine',
                style: TextStyle(fontSize: 33, color: Colors.black),
              ),
              builder: (BuildContext context, dynamic value, Widget child) {
                return Transform.translate(
                  offset: Offset(value * 100, 0.0),
                  child: child,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
