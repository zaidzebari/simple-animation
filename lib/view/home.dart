import 'package:first_test_for_flutter/view/animated_opacity.dart';
import 'package:first_test_for_flutter/view/just_slide.dart';
import 'package:first_test_for_flutter/view/transition.dart';
import 'package:flutter/material.dart';

import 'animated_align.dart';
import 'animated_container.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter animation")),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(30),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(15),
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => MyAnimatedContainer()));
              },
              child: Text('Animated container'),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(15),
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => MyAnimatedOpacity()));
              },
              child: Text('Animated opaciry'),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(15),
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => AnimatedAlignWidget()));
              },
              child: Text('Animated align don\'t click'),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(context, SlideLeftRoute());
                },
                child: Text('slide from left'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, SlideRightRoute());
                },
                child: Text('slide from right'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(context, SlideTopRoute());
                },
                child: Text('slide from top'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, SlideBottomRoute());
                },
                child: Text('slide from bottom'),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(15),
              ),
              onPressed: () {},
              child: Text('it is easy i will stop codding!'),
            ),
          ),
        ],
      ),
    );
  }
}

class SlideRightRoute extends PageRouteBuilder {
  SlideRightRoute()
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              JustSlide(),
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1, 0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}

class SlideBottomRoute extends PageRouteBuilder {
  SlideBottomRoute()
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              JustSlide(),
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 1),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}

class SlideTopRoute extends PageRouteBuilder {
  SlideTopRoute()
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              JustSlide(),
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, -1),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}

class SlideLeftRoute extends PageRouteBuilder {
  SlideLeftRoute()
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              JustSlide(),
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(-1, 0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}
