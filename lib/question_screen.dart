import 'package:flutter/material.dart';
import 'package:flutter_quiz/ans_buton.dart';
import 'package:flutter_quiz/data/question_set.dart';
//import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({ required this.selectedAns,  super.key});


 final void Function(String ans) selectedAns;


  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String _ans) {

    widget.selectedAns(_ans);
    

    setState(() {

      currentQuestionIndex++; // increments the value by 1
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,// jate kore ele,ment gula screen er bahire na jay
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAns().map((ans) {
              return AnsButton(
                ansText: ans,
                onTap: (){
                  answerQuestion(ans);
                },
              );
            })
          ],
        ),
      ),
    );
  }
}
