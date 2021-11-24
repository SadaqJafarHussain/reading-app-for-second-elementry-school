import 'package:flutter/material.dart';
import 'package:second_elementry_school/main.dart';
import 'package:second_elementry_school/readexersises/read_exercise2.dart';
class ReadExercise1 extends StatefulWidget {
  const ReadExercise1({Key key}) : super(key: key);

  @override
  _ReadExercise1State createState() => _ReadExercise1State();
}

class _ReadExercise1State extends State<ReadExercise1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=>const MainPage()));

          },
          icon:const Icon(Icons.home,
              color: Colors.blue,
              size: 40,),
        ),
        backgroundColor:const Color(0xffFAFAFA),
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
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/images/9.png",
                            height: 100,),
                          Image.asset("assets/images/54.png",
                            height: 100,),
                        ],
                      ),
                      Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:const [
                           Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: 'الـ', style: TextStyle(color: Colors.red,fontSize: 25)),
                                TextSpan(text: 'علم', style: TextStyle(fontSize: 20)),
                              ],
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: 'الـ', style: TextStyle(color: Colors.red,fontSize: 25)),
                                TextSpan(text: 'كَباب', style: TextStyle(fontSize: 20)),
                              ],
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: 'الـ', style: TextStyle(color: Colors.red,fontSize: 25)),
                                TextSpan(text: 'أَرنب', style: TextStyle(fontSize: 20)),
                              ],
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: 'الـ', style: TextStyle(color: Colors.red,fontSize: 25)),
                                TextSpan(text: 'أُذن', style: TextStyle(fontSize: 20)),
                              ],
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: 'الـ', style: TextStyle(color: Colors.red,fontSize: 25)),
                                TextSpan(text: 'إناء', style: TextStyle(fontSize: 20)),
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
                                TextSpan(text: 'علم', style: TextStyle(fontSize: 20)),
                              ],
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: 'كَباب', style: TextStyle(fontSize: 20)),
                              ],
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: 'أَرنب', style: TextStyle(fontSize: 20)),
                              ],
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: 'أُذن', style: TextStyle(fontSize: 20)),
                              ],
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: 'إناء', style: TextStyle(fontSize: 20)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.blue.shade200,
                        width: 4,
                        height: 200,
                      ),
                      Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:const [
                          Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: 'الـ', style: TextStyle(color: Colors.red,fontSize: 25)),
                                TextSpan(text: 'قلم', style: TextStyle(fontSize: 20)),
                              ],
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: 'الـ', style: TextStyle(color: Colors.red,fontSize: 25)),
                                TextSpan(text: 'كِتاب', style: TextStyle(fontSize: 20)),
                              ],
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: 'الـ', style: TextStyle(color: Colors.red,fontSize: 25)),
                                TextSpan(text: 'أَب', style: TextStyle(fontSize: 20)),
                              ],
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: 'الـ', style: TextStyle(color: Colors.red,fontSize: 25)),
                                TextSpan(text: 'أُم', style: TextStyle(fontSize: 20)),
                              ],
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: 'الـ', style: TextStyle(color: Colors.red,fontSize: 25)),
                                TextSpan(text: 'إبرة', style: TextStyle(fontSize: 20)),
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
                                TextSpan(text: 'قَلم', style: TextStyle(fontSize: 20)),
                              ],
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: 'كِتاب', style: TextStyle(fontSize: 20)),
                              ],
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: 'أَب', style: TextStyle(fontSize: 20)),
                              ],
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: 'أُم', style: TextStyle(fontSize: 20)),
                              ],
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: 'إبرة', style: TextStyle(fontSize: 20)),
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
                  Navigator.push(context, MaterialPageRoute(builder: (ctx)=>const ReadExercise2()));
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
