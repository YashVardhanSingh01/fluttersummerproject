import 'package:flutter/material.dart';
import 'login.dart';
import 'home.dart';

class TrackPage extends StatefulWidget {
  @override
  _TrackPageState createState() => _TrackPageState();
}

class _TrackPageState extends State<TrackPage> {
  String _chosenValue = '1';
  var _textController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 69,
        backgroundColor: Color(0xff2FC4B2),
        centerTitle: true,
        title: Text(
          'CRUX FLUTTER SUMMER GROUP',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 60),
                  width: 800,
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 5),
                  child: Text(
                    'Assignment Number',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  width: 800.0,
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
                  color: Color(0xffEBEBEB),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      hint: Text('Please select assignment'),
                      value: _chosenValue,
                      icon: Icon(Icons.arrow_drop_down_sharp),
                      iconSize: 20,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          _chosenValue = newValue!;
                        });
                      },
                      items: <String>[
                        '1',
                        '2',
                        '3',
                        '4',
                        '5',
                        '6',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  width: 800,
                  child: Column(
                    children: [
                      Container(
                        width: 800,
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 5),
                        child: Text(
                          'Score',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      TextField(
                        controller: _textController,
                        textAlign: TextAlign.left,
                        obscureText: false,
                        decoration: InputDecoration(
                            fillColor: Color(0xffEBEBEB),
                            filled: true,
                            border: InputBorder.none,
                            labelText: 'Please enter your score'),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 800,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 70),
                        padding: EdgeInsets.only(top: 20),
                        width: 110,
                        height: 70,
                        child: Builder(
                          builder: (context) => ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Theme.of(context).primaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              textStyle: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            child: Text(
                              'SUBMIT',
                            ),
                          ),
                        ),
                      ),
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
