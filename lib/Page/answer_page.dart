import 'package:flutter/material.dart';

class AnswerPage extends StatefulWidget {
  const AnswerPage({Key? key}) : super(key: key);

  @override
  State<AnswerPage> createState() => _AnswerPageState();
}

class _AnswerPageState extends State<AnswerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Voyez le passé, le présent et surtout, l'avenir !"),
        ),
        body: Center(
            child: Column(
          children: [
            Text("Quelle est votre question ?"),
          ],
        )));
  }

  getBoolQuestionWidget(String question_text) {
    return Column(children: [
      Text("Quelque chose vous taraude ? vous voudriez en savoir plus ?"),
      Row(mainAxisAlignment: MainAxisAlignment.start, children: [])
    ]);
  }
}
