import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/user_transactions.dart';

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
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                    width: double.infinity,
                    child: const Card(
                        color: Colors.blueGrey, child: Text('Chart'))),
                UserTransactions(),
              ],
            )));
  }
}
