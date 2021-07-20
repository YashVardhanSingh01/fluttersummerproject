import 'package:flutter/material.dart';

class FinalPage extends StatefulWidget {
  final String value;

  FinalPage({Key? key, this.value = ''}) : super(key: key);
  @override
  _FinalPageState createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 70, 0, 30),
                  alignment: Alignment.center,
                  width: 800,
                  height: 200,
                  child: Text(
                    'CRUX FLUTTER SUMMER GROUP',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Color(0xff2FC4B2),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  child: Text(
                    'welcomes you',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  alignment: Alignment.center,
                  width: 800,
                  height: 160,
                  child: Text(
                    '${widget.value}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Color(0xff000000),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  child: Text(
                    'Have a great journey ahead',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  width: 800,
                  height: 70,
                  child: Builder(
                    builder: (context) => ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff2FC4B2),
                        textStyle: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      child: Text(
                        'LOG OUT',
                      ),
                    ),
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
