import 'package:flutter/material.dart';
import 'package:second_elementry_school/readexersises/read_exercise6.dart';

import '../main.dart';

class ReadExercise5 extends StatelessWidget {
  const ReadExercise5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=>const MainPage()));
          },
          icon:Row(
            children: const[
              Icon(Icons.home,
                color: Colors.blue,
                size: 40,),
            ],
          ),
        ),
        backgroundColor: Color(0xffFAFAFA),
        elevation: 0.0,
        centerTitle: true,
        title: Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.pink,
          ),
          child:const Center(
            child:  Text("إقرأ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: "Cairo",
                  fontWeight: FontWeight.bold
              ),),
          ),
        ),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height*.6,
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.blue,width: 5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/6.png",
                    height: 100,),
                  Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:const [
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'مَصنعُ', style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'صـ', style: TextStyle(fontSize: 20,color: Colors.red)),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'مًسعود', style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'سـ', style: TextStyle(fontSize: 20,color: Colors.red)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:const [
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'صِناعةُ', style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'صِـ', style: TextStyle(fontSize: 20,color: Colors.red)),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'سِنان', style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'سِــ', style: TextStyle(fontSize: 20,color: Colors.red)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:const [
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'صُندوق', style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'صُــ', style: TextStyle(fontSize: 20,color: Colors.red)),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'سُندوس', style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'سُــ', style: TextStyle(fontSize: 20,color: Colors.red)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:const [
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'صَنَعَ', style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'صَـ', style: TextStyle(fontSize: 20,color: Colors.red)),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'سَلام', style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'سَــ', style: TextStyle(fontSize: 20,color: Colors.red)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (ctx)=>const ReadExercise6()));
                },
                child: Container(width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:const [
                      Icon(Icons.arrow_back_ios_sharp,
                        color: Colors.white,
                        size: 30,),
                      Text("التالي",style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),)
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:const [
                      Text("السابق",style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                      ),
                      Icon(Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                        size: 30,),

                    ],
                  ),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
