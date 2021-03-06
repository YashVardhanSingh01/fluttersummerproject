import 'package:assignment320201712/providers/diplay_name_or_id.dart';
import 'package:assignment320201712/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'track.dart';

class HomePage extends StatefulWidget {
  final int counter;
  final int marks;
  final double percentage;
  final int chosenval;

  HomePage(
      {Key? key,
      this.counter = 0,
      this.marks = 0,
      this.percentage = 0.0,
      this.chosenval = 0})
      : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _value = '';
  @override
  void initState() {
    super.initState();
    _getName();
  }

  void _getName() async {
    final prefs = await SharedPreferences.getInstance();
    _value = (prefs.getString('name') ?? 0).toString();
  }

  void _getID() async {
    final prefs = await SharedPreferences.getInstance();
    _value = (prefs.getString('id') ?? 0).toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoginPage(),
            ),
          );
        },
        child: const Icon(Icons.logout),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 90, 0, 0),
                  alignment: Alignment.topLeft,
                  width: 800,
                  height: 70,
                  child: Consumer<SetNameOrID>(
                    builder: (context, nmoid, child) {
                      int chosenval = nmoid.radvalue;
                      if (chosenval == 1) {
                        _getName();
                      } else if (chosenval == 2) {
                        _getID();
                      }
                      return Text(
                        'Hi $_value !',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 28,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.left,
                      );
                    },
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      width: 800,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Theme.of(context).accentColor,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                    Positioned(
                      top: 15,
                      left: 15,
                      child: Text(
                        'Your Progress',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 55,
                      left: 15,
                      child: Text(
                        '${widget.counter}/6\nassignments done',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 55,
                      right: 15,
                      child: Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).primaryColor,
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '${widget.percentage.toStringAsFixed(2)}%',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  width: 800,
                  height: 200,
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Your Score',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Theme.of(context).primaryColor,
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                '${widget.marks}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20),
                            width: 110,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                            child: Builder(
                              builder: (context) => ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => TrackPage(),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Theme.of(context).primaryColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  textStyle: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                child: Text(
                                  'TRACK',
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
