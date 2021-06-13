import 'package:flutter/material.dart';

class MyAnimatedOpacity extends StatefulWidget {
  const MyAnimatedOpacity({Key? key}) : super(key: key);

  @override
  _MyAnimatedOpacityState createState() => _MyAnimatedOpacityState();
}

class _MyAnimatedOpacityState extends State<MyAnimatedOpacity> {
  double opacity = .9;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: AnimatedOpacity(
                duration: Duration(seconds: 1),
                opacity: opacity,
                child: Text(
                  "it is me zaid dev",
                  style: TextStyle(fontSize: 20, color: Colors.black87),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  opacity = 1;
                });
              },
              child: Text(
                'increase opacity',
                style: TextStyle(color: Colors.green, fontSize: 25),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(),
              onPressed: () {
                setState(() {
                  opacity = .2;
                });
              },
              child: Text(
                'decrease opacity',
                style: TextStyle(color: Colors.red, fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
