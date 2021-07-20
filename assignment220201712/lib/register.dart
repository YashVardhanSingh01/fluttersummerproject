import 'package:flutter/material.dart';
import 'package:assignment220201712/final.dart';
import 'package:assignment220201712/login.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String _chosenValue = '2020';
  int _grpvalue = 1;
  var _textController = new TextEditingController();
  bool state = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color(0xff2FC4B2),
        centerTitle: true,
        title: Text(
          'CRUX FLUTTER SUMMER GROUP',
          style: TextStyle(
            fontSize: 20,
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
                  alignment: Alignment.topLeft,
                  width: 800,
                  child: Column(
                    children: [
                      Container(
                        width: 800,
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 5),
                        child: Text(
                          'ID Number',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
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
                            labelText: 'Please enter your BITS ID number'),
                      )
                    ],
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
                          'Password',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      TextField(
                        textAlign: TextAlign.left,
                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Color(0xffEBEBEB),
                            filled: true,
                            border: InputBorder.none,
                            labelText: 'Please enter your password'),
                      ),
                      Container(
                        width: 800,
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 5),
                        child: Text(
                          'Batch',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        width: 800.0,
                        padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
                        color: Color(0xffEBEBEB),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            hint: Text('Please enter year of admission'),
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
                              '2020',
                              '2019',
                              '2018',
                              '2017',
                              '2016'
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
                        margin: EdgeInsets.only(top: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Receive regular updates',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Switch(
                              onChanged: (bool s) {
                                setState(() {
                                  state = s;
                                  print(state);
                                });
                              },
                              value: state,
                              activeColor: Color(0XFF2FC4E2),
                              activeTrackColor: Color(0XFFD3F2FD),
                              inactiveThumbColor: Color(0xFF2FC4E2),
                              inactiveTrackColor: Color(0xFFC2C4E2),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(bottom: 20.0),
                              child: Text(
                                'Are you excited for this?!',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                            ),
                            Row(
                              children: [
                                Radio(
                                  value: 1,
                                  groupValue: _grpvalue,
                                  onChanged: (value) {
                                    setState(
                                      () {
                                        _grpvalue = 1;
                                      },
                                    );
                                  },
                                ),
                                Container(
                                  width: 100,
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Radio(
                                  value: 2,
                                  groupValue: _grpvalue,
                                  onChanged: (value) {
                                    setState(() {
                                      _grpvalue = 2;
                                    });
                                  },
                                ),
                                Container(
                                  width: 100,
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 20),
                              width: 800,
                              height: 70,
                              child: Builder(
                                builder: (context) => ElevatedButton(
                                  onPressed: () {
                                    String textToSend = _textController.text;
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            FinalPage(value: textToSend),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xff2FC4B2),
                                    textStyle: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  child: Text(
                                    'REGISTER',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 50),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Already have an account?',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Builder(
                                    builder: (context) => TextButton(
                                      style: TextButton.styleFrom(
                                        primary: Color(0xff2FC4B2),
                                        textStyle: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => LoginPage(),
                                          ),
                                        );
                                      },
                                      child: Text('Login'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
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
