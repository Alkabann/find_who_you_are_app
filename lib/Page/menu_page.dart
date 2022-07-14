import 'package:find_who_you_are_app/Page/answer_page.dart';
import 'package:find_who_you_are_app/Page/question_page.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Menu"),
        ),
        body: Center(
            child: Row(
          children: [
            TextButton(
                onPressed: goToQuestionPage,
                child: const Text("Questions"),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: const Color(0xFF305880),
                  onSurface: Colors.grey,
                )),
            const SizedBox(width: 20),
            TextButton(
                onPressed: goToAnswerPage,
                child: const Text("Réponse"),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: const Color(0xFF305880),
                  onSurface: Colors.grey,
                )),
          ],
        )));
  }

  goToQuestionPage() async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => QuestionPage()),
    );
  }

  goToAnswerPage() async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AnswerPage()),
    );
  }
}
