import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uber Eats',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(child:
        Center(
          child: Text('UberEats with fullter'),
        )
      )
    );
  }
}