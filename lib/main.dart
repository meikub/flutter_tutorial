import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Hello')),
            body: Column(
              children: [
                Card(
                    color: Colors.blueGrey,
                    child: Container(width: double.infinity,child: Text('Chart'))),
                Card(child: Text('List of Transactions'))
              ],
            )));
  }
}
