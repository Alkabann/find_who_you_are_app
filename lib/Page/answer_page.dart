import 'package:find_who_you_are_app/Widget/c_searchbar.dart';
import 'package:flutter/material.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
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
            CustomSearchDelegate(),
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
