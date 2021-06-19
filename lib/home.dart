import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool status = false;

  changeStatus() {
    setState(() {
      status = !status;
      print(status);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.star_outline_sharp), onPressed: changeStatus),
        ],
      ),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 600),
        child: status == true
            ? ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => Card(
                  color: Colors.blue,
                  child: ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          //optaional
                          transitionDuration: const Duration(seconds: 1),
                          pageBuilder: (_, animation, __) =>
                              //we also has ScaleTransition with scale property and add animation
                              FadeTransition(
                            opacity: animation,
                            child: DetailScreen(
                              index: index,
                              title: 'this is title',
                            ),
                          ),
                        ),
                      );
                    },
                    title: Hero(
                        tag: index.toString(),
                        child: Text(
                          'this is title',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.normal),
                        )),
                    leading: Text(index.toString()),
                  ),
                ),
              )
            : GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: Colors.amber,
                    child: Center(child: Text('$index')),
                  );
                },
              ),
      ),
    );
  }
}
