import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({Key? key}) : super(key: key);

  @override
  _MyAnimatedContainerState createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  double width = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedContainer(
              curve: Curves.easeIn,
              duration: Duration(milliseconds: 300),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.blue),
              width: width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'this text will grow width with animated',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  width = 300;
                });
              },
              child: Text(
                'increase width',
                style: TextStyle(color: Colors.green, fontSize: 25),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(),
              onPressed: () {
                setState(() {
                  width = 200;
                });
              },
              child: Text(
                'decrease width',
                style: TextStyle(color: Colors.red, fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
