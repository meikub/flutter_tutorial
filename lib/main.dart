import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int questionIndex = 0;
  var questions = ['question1?', 'question2?', 'question3?'];

  void answerQuestion() {
    setState(() {
      questionIndex++;
    });
    print(questions[questionIndex]);
  }

  //build ist so ähnlich wie der Update-LifeCycle in Unity. Unterschied ist, dass Update pro Frame aufgerufen wird und build ändert sich, sobald ein Trigger auf einen unterschied hinweist
  // Änderung im UI => rebuild App
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Hello')),
            body: Column(
              children: [
                Text(questions[questionIndex]),
                Text("two"),
                RaisedButton(onPressed: answerQuestion)
              ],
            )));
  }
}
