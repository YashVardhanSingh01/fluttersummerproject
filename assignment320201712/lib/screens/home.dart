import 'package:assignment320201712/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'track.dart';

class HomePage extends StatefulWidget {
  final String value;

  HomePage({Key? key, this.value = ''}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  getName() async {
    final prefs = await SharedPreferences.getInstance();
    final obtainedName = prefs.getString('name') ?? 0;
    return obtainedName;
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
                  child: Text(
                    'Hi ${getName()} !',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 28,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.left,
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
                        '2/6\nassignments done',
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
                            '50%',
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
                                '25',
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
