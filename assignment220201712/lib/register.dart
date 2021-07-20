import 'package:flutter/material.dart';
import 'package:assignment220201712/final.dart';
import 'package:assignment220201712/login.dart';

class RegisterPage extends StatelessWidget {
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
                          // Switch(
                          //   onChanged: (true)?true:,
                          //   value: true,
                          //   activeColor: Color(0XFF2FC4E2),
                          //   activeTrackColor: Color(0XFFE3F2FD),
                          //   inactiveThumbColor: Color(0xFF2FC4E2),
                          //   inactiveTrackColor: Color(0xFFC2C4E2),
                          // ),
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
                              Container(
                                width: 150,
                                child: Text(
                                  'Yes',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                width: 150,
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
                            margin: EdgeInsets.only(top: 40),
                            width: 800,
                            height: 50,
                            child: Builder(
                              builder: (context) => ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => FinalPage(),
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
    );
  }
}
