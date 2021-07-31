import 'package:assignment320201712/providers/assignments_done_counter.dart';
import 'package:assignment320201712/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AssignmentCounter>(
      create: (context) => AssignmentCounter(),
      child: Builder(
        builder: (context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor: Color(0xff2FC4B2),
              accentColor: Color(0xffd7fffa),
            ),
            home: LoginPage(),
          );
        },
      ),
    );
  }
}
