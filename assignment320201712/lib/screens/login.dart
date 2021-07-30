import 'home.dart';
import 'register.dart';
import 'nav.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _nameController = new TextEditingController();
  var _idController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  alignment: Alignment.center,
                  width: 800,
                  height: 200,
                  child: Text(
                    'CRUX FLUTTER SUMMER GROUP',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 39,
                      color: Theme.of(context).primaryColor,
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
                          'Name',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      TextField(
                        controller: _nameController,
                        textAlign: TextAlign.left,
                        obscureText: false,
                        decoration: InputDecoration(
                            fillColor: Color(0xffEBEBEB),
                            filled: true,
                            border: InputBorder.none,
                            labelText: 'Please enter your name'),
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
                              controller: _idController,
                              textAlign: TextAlign.left,
                              obscureText: false,
                              decoration: InputDecoration(
                                  fillColor: Color(0xffEBEBEB),
                                  filled: true,
                                  border: InputBorder.none,
                                  labelText:
                                      'Please enter your BITS ID number'),
                            ),
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
                            child: Builder(
                              builder: (context) => ElevatedButton(
                                onPressed: () async {
                                  final prefs =
                                      await SharedPreferences.getInstance();
                                  prefs.setString('name', _nameController.text);
                                  // String textToSend = _nameController.text;
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          //HomePage(value: textToSend),
                                          NavigationPage(),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Theme.of(context).primaryColor,
                                  textStyle: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                child: Text(
                                  'LOG IN',
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: TextButton(
                              style: TextButton.styleFrom(
                                primary: Theme.of(context).primaryColor,
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
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                Builder(
                                  builder: (context) => TextButton(
                                    style: TextButton.styleFrom(
                                      primary: Theme.of(context).primaryColor,
                                      textStyle: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => RegisterPage(),
                                        ),
                                      );
                                    },
                                    child: Text('Register'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
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
