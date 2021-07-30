import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int _grpvalue = 1;
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
            child: Container(
              margin: EdgeInsets.only(top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 200,
                    margin: EdgeInsets.only(left: 15),
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      'Your Home Bio',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.normal),
                    ),
                  ),
                  Row(
                    children: [
                      Radio(
                        activeColor: Theme.of(context).primaryColor,
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
                          'Name',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Radio(
                        activeColor: Theme.of(context).primaryColor,
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
                          'ID',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
