import 'dart:math';

import 'package:find_who_you_are_app/Data/Question/question_bool.dart';
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
          title: Text("Question"),
        ),
        body: Center(
            child: Column(
          children: [
            getBoolQuestionWidget("MyText"),
            TextButton(
                onPressed: clickedOnNext,
                child: const Text("Next"),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: const Color(0xFF305880),
                  onSurface: Colors.grey,
                )),
          ],
        )));
  }

  getBoolQuestionWidget(String question_text) {
    return Column(children: [
      Text(getQuestionTitle()),
      Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        TextButton(
            onPressed: clickOnYesOrNo,
            child: const Text("Oui"),
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: const Color(0xFF305880),
              onSurface: Colors.grey,
            )),
        const SizedBox(width: 20),
        TextButton(
            onPressed: clickOnYesOrNo,
            child: const Text("Non"),
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: const Color(0xFF305880),
              onSurface: Colors.grey,
            )),
      ])
    ]);
  }

  clickOnYesOrNo() async {
    print("TO DO register data");
    setState(() {});
  }

  clickedOnNext() async {
    print("TO DO register user nexted the question");
    setState(() {});
  }

  getQuestionTitle() {
    print("TO DO in cloud");
    String key = getARandomKeyOfADict(getAllBoolQuestionDict());
    return getAllBoolQuestionDict()[key]["text"];
  }
}

String getARandomKeyOfADict(Map<String, dynamic> my_map) {
  final random = Random();
  List<String> key_list = my_map.keys.toList();
  var i = random.nextInt(key_list.length);
  return key_list[i];
}
