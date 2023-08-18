class QuestionModel{
const QuestionModel(this.text,  this.answerList);

 final String text;
 final List<String> answerList;


 List<String> getShuffledAns(){
  
//=========imprtant======================
    final answerList_1= List.of(answerList);
    answerList_1.shuffle();

    return answerList_1;
 }
 //========================================

}

