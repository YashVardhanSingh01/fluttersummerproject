import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
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
                        width: 300.0,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            value: Text(
                              '2020',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            items: [],
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
