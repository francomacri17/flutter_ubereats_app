import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ubereats_app/src/ui/login_page.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uber Eats',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Regencie'
      ),
      home: Container(child:
        Center(
          child: LoginPage(),
        )
      )
    );
  }
}