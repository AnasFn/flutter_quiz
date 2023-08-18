import 'package:flutter/material.dart';
import 'package:flutter_quiz/start_screen.dart';
import 'package:flutter_quiz/question_screen.dart';
import 'package:flutter_quiz/data/question_set.dart';
import 'package:flutter_quiz/result.dart';

class MyQuiz extends StatefulWidget {
  const MyQuiz({super.key});

  @override
  State<MyQuiz> createState() => _MyQuizState();
}

class _MyQuizState extends State<MyQuiz> {

  var activeScreenV = 'start-screen';


  void changeScreenM() {
    setState(() {
      activeScreenV = 'question-screen';
    });
  }

  
 List<String> selectedAnsList= [];


  void _selectAns(String _chosenAns){
    selectedAnsList.add(_chosenAns);

    if(selectedAnsList.length==questions.length){
      setState(() {
       // selectedAnsList= [];
        activeScreenV= 'result-screen';
      });

    }
  }

  void restartBtn(){
    
    setState(() {
      selectedAnsList= [];
      activeScreenV= 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(changeScreenM);

    if (activeScreenV == 'question-screen') {
      screenWidget =  QuestionsScreen(
       selectedAns: _selectAns
      );
    }

    if(activeScreenV == 'result-screen'){
      screenWidget=  ResultScreen(selectedAnsList, restartBtn);
    }

    

    return MaterialApp(
      home: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 98, 6, 173),
                  Color.fromARGB(255, 4, 14, 126)
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: screenWidget,
          ),
        
      ),
    );
  }
}
