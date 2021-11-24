import 'package:flutter/material.dart';
import 'package:second_elementry_school/readexersises/read_exercise7.dart';

import '../main.dart';

class ReadExercise6 extends StatelessWidget {
  const ReadExercise6({Key key}) : super(key: key);

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
                  Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:const [
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'شَيماء', style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'رائِد', style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'نَأكُل', style: TextStyle(fontSize: 20)),
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
                            TextSpan(text: 'سَماء', style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'مائِدة', style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'يَقرأ', style: TextStyle(fontSize: 20)),
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
                            TextSpan(text: 'بِناء', style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'بِئر', style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'مأمون', style: TextStyle(fontSize: 20)),
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
                            TextSpan(text: 'ماء', style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'ذِئب', style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'سأل', style: TextStyle(fontSize: 20)),
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
                  Navigator.push(context, MaterialPageRoute(builder: (ctx)=>const ReadExercise7()));
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
