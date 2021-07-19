import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
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
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      width: 800,
                      height: 70,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff2FC4B2),
                          textStyle: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        child: Text(
                          'LOG IN',
                        ),
                      ),
                    ),
                    Container(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Color(0xff2FC4B2),
                          textStyle: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        onPressed: () {},
                        child: Text('Forgot password ?'),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t have an account?',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                primary: Color(0xff2FC4B2),
                                textStyle: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              onPressed: () {},
                              child: Text('Register'),
                            ),
                          ],
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
