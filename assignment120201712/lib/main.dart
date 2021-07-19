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
          padding: EdgeInsets.fromLTRB(16, 20, 16, 16),
          color: Colors.white,
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                child: Container(
                  color: Colors.amber,
                  height: 100,
                  width: 1000,
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Container(
                  padding: EdgeInsets.all(16),
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.blueAccent,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  height: 100,
                  width: 100,
                  color: Colors.green,
                )
              ]),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                child: Container(
                  color: Colors.blue,
                  height: 100,
                  width: 1200,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                child: Container(
                  color: Colors.black26,
                  height: 100,
                  width: 1200,
                ),
              ),
              Row(children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 16, 16, 16),
                        child: Container(
                          height: 100,
                          width: 100,
                          color: Colors.orangeAccent,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 16, 16, 0),
                        child: Container(
                          height: 100,
                          width: 100,
                          color: Colors.brown,
                        ),
                      ),
                    ]),
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
                  child: Container(
                    height: 228,
                    width: 228,
                    color: Colors.green,
                  ),
                ),
              ])
            ],
          ),
        ));
  }
}
