import 'package:flutter/material.dart';
import 'package:miapp_flutter1/vistas/wellcomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Scaffold(
          backgroundColor: Color(0xFFBFD6D9),
          body: WelcomePage(),
        ));
  }
}
