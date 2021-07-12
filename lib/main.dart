import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Layout Basics',
        home: Container(
          color: Colors.white,
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Container(
                color: Colors.amber,
                height: 133.33,
                width: 1200,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Container(
                  height: 133.33,
                  width: 120,
                  color: Colors.green,
                ),
                Container(
                  height: 133.33,
                  width: 120,
                  color: Colors.red,
                ),
                Container(
                  height: 133.33,
                  width: 120,
                  color: Colors.green,
                )
              ]),
              Container(
                color: Colors.blue,
                height: 133.33,
                width: 1200,
              ),
              Container(
                color: Colors.black26,
                height: 133.33,
                width: 1200,
              ),
              Row(children: [
                Column(children: [
                  Container(
                    height: 133.33,
                    width: 120,
                    color: Colors.orangeAccent,
                  ),
                  Container(
                    height: 133.33,
                    width: 120,
                    color: Colors.brown,
                  ),
                ]),
                Container(
                  height: 266.66,
                  width: 240,
                  color: Colors.green,
                ),
              ])
            ],
          ),
        ));
  }
}
