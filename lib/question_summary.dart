

import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  

  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {

          //it dos not work//  Color textShapeColor= data['user-answer'].toString() == data['correct-answer'].toString() ? Color.fromARGB(255, 9, 219, 16) : Color.fromARGB(255, 224, 32, 18) ;
            
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
             
              children: [
                
                  Container(
                    alignment: Alignment.center,
                    height: 40 ,width: 40,
                    decoration: BoxDecoration(
                      color: data['user-answer'] == data['correct-answer'] ? Color.fromARGB(255, 85, 230, 177) :Color.fromARGB(255, 231, 95, 86),
                      borderRadius: BorderRadius.circular(100),
                    ),

                    padding:const EdgeInsets.all(10),
                    child: Text(((data['question-index'] as int) + 1).toString(),
                    style: const TextStyle(fontSize: 22, color: Colors.white,
                    
                    
                    ),
                    ),
                  ),
                
                Expanded(
                  
                  child: Container(
                    margin: const EdgeInsets.only(left: 30),
                    child: Column(
                      
                      crossAxisAlignment: CrossAxisAlignment.start,
                     
                      children: [
                        Text(data['question'] as String, 
                        style: const TextStyle(color: Colors.white,
                        fontSize: 16),
                      
                        
                        
                        ),
                        Text(((data['user-answer'] as String)
                        ), style:  TextStyle(color: data['user-answer'] == data['correct-answer'] ? Color.fromARGB(255, 17, 232, 153) :Color.fromARGB(255, 229, 57, 44),
                        fontSize: 12),
                        ),
                        Text(((data['correct-answer'] as String)),
                        style:  TextStyle(color: Color.fromARGB(255, 17, 232, 153),
                        fontSize: 12),
                        ),
                        const SizedBox(height: 20,)
                      ],
                    ),
                  ),
                )
              ],
            );

            
          }).toList(),
        ),
      ),
    );
  }
}














