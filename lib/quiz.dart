import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}


class _QuestionsState extends State<Questions> {

  List _question =[
    Quiz(' Sharks are mammals. ',false),
    Quiz(' The blue whale is the biggest animal to have ever lived. ',true),
    Quiz(' he goat is the national animal of Scotland. ',false),
    Quiz(' he goat is the national animal of Scotland. ',true),
    Quiz(' The New York Marathon is the largest in the world ',true),
    Quiz(' The most common blood type is 0- negative. ',true),
    Quiz(' The maximum length for a video posted on TikTok is 45 seconds. ',false),
    Quiz(' The total length of the Great Wall of China adds up to 13,171 miles. ',true),
    Quiz(' infants have more bones than adults.',true),
    Quiz('Every country in the world has a rectangular flag.  ',false),
  ];

  int q_no=0;
  void next(){
    if(q_no <_question.length) {
      q_no++;
    }



  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 600,
              height: 200,
              alignment: Alignment.center,
              child: Text(
                _question[q_no].que,
                style: TextStyle(fontSize: 40,color: Colors.black),),
              decoration: BoxDecoration(color: Colors.white),
            ),
            SizedBox(height: 20,),
            TextButton(onPressed: (){
              setState(() {
                next();
              });
            }, child: Text('YES' ,style: TextStyle(fontSize: 15,color: Colors.black),),
                style: TextButton.styleFrom(backgroundColor: Colors.green,padding: EdgeInsets.all(20))
            ),
            SizedBox(height: 20,),
            TextButton(onPressed: null, child: Text('NO',style: TextStyle(fontSize: 15,color: Colors.black),),
                style: TextButton.styleFrom(backgroundColor: Colors.red,padding: EdgeInsets.all(20))
            ),
          ],
          )
      ),
    );
  }
}
