
import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/question_set.dart';
import 'package:flutter_quiz/question_summary.dart';


class ResultScreen extends StatelessWidget {
   ResultScreen(this.selectedAns, this.restart, {super.key});

  List<String> selectedAns;
  void Function() restart;


  List<Map<String, Object>> getSummaryData() {

    final List<Map<String, Object>> summary = [];

    

    for(int i=0; i < selectedAns.length; i++){
        summary.add({
          'question-index': i,
          'question' : questions[i].text,
          'correct-answer' : questions[i].answerList[0],
          'user-answer' : selectedAns[i],

        });
    }

    return summary;
  }




  @override
  Widget build(BuildContext context) {

    final summarydata= getSummaryData();
    final totalAns= questions.length;

    final corretAns= summarydata.where((data){ //where .where do like map but not at all
    //it doesn't to need to retuen deiffermnt type of valuie instead it return true or false
      return data['correct-answer'] == data['user-answer'];

    }).length;

    
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text('You answered $corretAns out of $totalAns questions correctly!',
             style: TextStyle(color: Colors.white, 
             fontSize: 20)),
            const SizedBox(
              height: 30,
            ),
             QuestionSummary(summarydata),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: restart,
              child: const Text('Restart Quiz!'),
            )
          ],
        ),
      ),
    );
  }
}