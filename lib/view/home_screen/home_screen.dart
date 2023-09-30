import 'package:flutter/material.dart';
import 'package:myquiz/utils/database/database.dart';
import 'package:myquiz/view/total_score/total_score.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 
  int? value;
  int count=0;
  int QuesNo = 0;
  int crtanswer = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Question ${QuesNo+1}/10",style: TextStyle(color: Colors.white60,fontSize: 30),),
              ),
              SizedBox(height: 30,),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 48, 173, 241)),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    QuizBase.question[QuesNo]['question'],
                    style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: "poppins"),
                  ),
                ),
              ),SizedBox(height: 50,),
              Expanded(
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          value = index;
                          value == QuizBase.question[QuesNo]['answer'] 
                          ? crtanswer++ 
                          : print("");
                        });
                      },
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color.fromARGB(255, 48, 173, 241)),
                          borderRadius: BorderRadius.circular(20),
                          color: value == index 
                          ? value == QuizBase.question[QuesNo]['answer']
                          ?Colors.green
                          :Colors.red
                          :Colors.transparent
                        ),
                        child: Padding(
                           padding: EdgeInsets.only(
                                left: 20, top: 15, bottom: 0, right: 0),
                          child: Text(
                            QuizBase.question[QuesNo]['options'][index],
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      value=5;
                      count++;
                      QuesNo++;


                      count>9
                      ?Navigator.push(context, MaterialPageRoute(builder: (context) => Score(ans: crtanswer),))
                      :SizedBox();
                      
                    });
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 48, 173, 241),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child: Text(
                      "Next",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
