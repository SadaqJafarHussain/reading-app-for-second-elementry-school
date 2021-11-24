import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:second_elementry_school/draganddropexercises/ex1.dart';
import 'package:second_elementry_school/main.dart';
import 'package:second_elementry_school/pages/write_on_screen.dart';
import 'package:second_elementry_school/pages/write_with_keyboard.dart';
import 'package:second_elementry_school/readandwriteexersises/read_ex1.dart';
import 'package:second_elementry_school/readexersises/read_exercise.dart';

class Problems extends StatelessWidget {
  const Problems({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff74cef3),
      body:  SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
          color: Color(0xff74cef3),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                width: 300,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.pink.shade200,
                    borderRadius:const BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )
                ),
                child:const Text("تمارين الكتاب",
                  style: TextStyle(color: Colors.black,
                      fontFamily: "Cairo",
                      fontWeight: FontWeight.w900,
                      fontSize: 30),),
              ),
              Column(
                children: [
                  Material(
                    color: Colors.transparent,
                    child: Ink(
                      child: InkWell(
                        splashColor: Colors.blue,
                        borderRadius:const BorderRadius.all(Radius.circular(20)),
                        onTap: ()async{
                          SystemChrome.setPreferredOrientations(
                              [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
                         await Navigator.push(context, MaterialPageRoute(builder: (ctx)=>const Ex1()));
                          SystemChrome.setPreferredOrientations(
                              [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
                        },
                        child: Container(
                          margin:const EdgeInsets.only(bottom: 5),
                          height: 80,
                          width: 310,
                          decoration:const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Colors.white
                          ),
                          child: Center(child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:  [
                              Image.asset("assets/images/drag.png",
                              height: 60,
                              width: 60,),
                              const  Text("تمارين السحب والافلات",
                                style: TextStyle(color: Colors.blue,
                                    fontFamily: "Cairo",
                                    fontSize: 20),
                              ),
                            ],
                          )
                          ),
                        ),
                      ),
                    ),
                  ),
                 const SizedBox(
                    height: 30,
                  ),
                  Material(
                    color: Colors.transparent,
                    child: Ink(
                      child: InkWell(
                        splashColor: Colors.blue,
                        borderRadius:const BorderRadius.all(Radius.circular(20)),
                        onTap: ()async{
                          SystemChrome.setPreferredOrientations(
                              [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
                         await Navigator.push(context, MaterialPageRoute(builder: (ctx)=> ReadEx1()));
                          SystemChrome.setPreferredOrientations(
                              [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
                        },
                        child: Container(
                          margin:const EdgeInsets.only(bottom: 5),
                          height: 80,
                          width: 310,
                          decoration:const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: Colors.white
                          ),
                          child: Center(child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:  [
                              Image.asset("assets/images/read_write.png",
                              height: 60,
                              width: 60,),
                              const  Text("تمارين القراءة والكتابة",
                                style: TextStyle(color: Colors.blue,
                                    fontFamily: "Cairo",
                                    fontSize: 20),
                              ),
                            ],
                          )
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Material(
                      color: Colors.transparent,
                      child: Ink(
                        child: InkWell(
                          splashColor: Colors.blue,
                          borderRadius:const BorderRadius.all(Radius.circular(20)),
                          onTap: ()async{
                            SystemChrome.setPreferredOrientations(
                                [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
                          await  Navigator.push(context, MaterialPageRoute(builder: (ctx)=>const ReadExercise1()));
                            SystemChrome.setPreferredOrientations(
                                [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
                          },
                          child: Container(
                            margin:const EdgeInsets.only(bottom: 5),
                            height: 80,
                            width: 310,
                            decoration:const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.white
                            ),
                            child: Center(child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:  [
                                Image.asset("assets/images/read.png",
                                height: 60,
                                width: 60,),
                                const  Text("            تمارين القراءة",
                                  style: TextStyle(color: Colors.blue,
                                      fontFamily: "Cairo",
                                      fontSize: 20),
                                ),
                              ],
                            )
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),


              Container(
                  width: 300,
                  height: 60,
                  decoration:const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )
                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=> const MainPage()));
                      }, icon: const Icon(Icons.home_outlined,size: 50,)),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.search,size: 50,)),
                      IconButton(onPressed: (){
                        Navigator.pop(context);
                      }, icon: const Icon(Icons.forward,size: 50,))
                    ],
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
