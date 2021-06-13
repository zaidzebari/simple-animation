import 'package:flutter/material.dart';

class AnimatedAlignWidget extends StatefulWidget {
  @override
  _AnimatedAlignWidgetState createState() => _AnimatedAlignWidgetState();
}

class _AnimatedAlignWidgetState extends State<AnimatedAlignWidget> {
  AlignmentGeometry _alignment = Alignment.topRight;
  AlignmentGeometry _geometry = Alignment.bottomLeft;

  void _changeAlignment() {
    setState(() {
      _alignment = _alignment == Alignment.topRight
          ? Alignment.bottomLeft
          : Alignment.topRight;
      _geometry = _alignment == Alignment.topRight
          ? Alignment.bottomLeft
          : Alignment.topRight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/angryback.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
        child: Stack(
          children: [
            AnimatedAlign(
              alignment: _alignment,
              curve: Curves.easeInOutBack,
              duration: Duration(seconds: 3),
              child: Image.asset(
                'images/redbird.png',
                height: 75,
                width: 75,
              ),
            ),
            AnimatedAlign(
              alignment: _geometry,
              curve: Curves.easeInCirc,
              duration: Duration(seconds: 3),
              child: Image.asset(
                'images/greenpig.png',
                height: 75,
                width: 75,
              ),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.black),
                onPressed: () => _changeAlignment(),
                child: Text('START'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
