import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_elementry_school/data/lessons.dart';
import 'package:second_elementry_school/pages/write_on_screen.dart';
import 'package:second_elementry_school/pages/write_with_keyboard.dart';
import 'package:second_elementry_school/typelesson/lesson_widget_for_id_1.dart';
import 'package:second_elementry_school/typelesson/lesson_widget_for_id_10.dart';
import 'package:second_elementry_school/typelesson/lesson_widget_for_id_11.dart';
import 'package:second_elementry_school/typelesson/lesson_widget_for_id_2.dart';
import 'package:second_elementry_school/typelesson/lesson_widget_for_id_3.dart';
import 'package:second_elementry_school/typelesson/lesson_widget_for_id_4.dart';
import 'package:second_elementry_school/typelesson/lesson_widget_for_id_5.dart';
import 'package:second_elementry_school/typelesson/lesson_widget_for_id_6.dart';
import 'package:second_elementry_school/typelesson/lesson_widget_for_id_7.dart';
import 'package:second_elementry_school/typelesson/lesson_widget_for_id_8.dart';
import 'package:second_elementry_school/typelesson/lesson_widget_for_id_9.dart';

import '../main.dart';
class LessonsPage extends StatelessWidget {
  const LessonsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const  Color(0xff74cef3),
        body: SafeArea(
          child: Column(
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
                child:const Text("قائمة الدروس",
                style: TextStyle(color: Colors.white,
                fontFamily: "Cairo",
                fontWeight: FontWeight.w900,
                fontSize: 30),),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Scrollbar(
                  child: GridView.builder(
                    padding:const EdgeInsets.only(right: 15,left: 5),
                    scrollDirection: Axis.vertical,
                    itemCount: lesson.length,
                    itemBuilder: (context,index){
                      return InkWell(
                        onTap: (){
                           showDie(context, lesson[index]);
                        },
                        child: Container(
                          margin:const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage(lesson[index]["image1"].toString()),
                                fit: BoxFit.fill
                              ),
                              borderRadius:const BorderRadius.all(Radius.circular(20)),
                              color: Colors.white,
                          ),
                        ),
                      );
                    }, gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 0.0,
                  ),
                      ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  alignment: Alignment.center,
                  width: 150,
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
                      InkWell(onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=> const MainPage()));

                      }, child: Image.asset("assets/images/home.png",
                        height: 40,
                        width: 40,)),
                      InkWell(onTap: (){
                      },
                          child: Image.asset("assets/images/person.png",
                        height: 40,
                        width: 40,)),
                    ],
                  )
              ),
            ],
          ),
        ));
  }
  showDie(BuildContext context,Map<String,dynamic> lesson){
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: 'Label',
      //Dismiss alert dialog when set true
      pageBuilder: (context,___,__) {
        //Clips its child in a oval shape
        return AlertDialog(
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          content: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffdd8bbb
          ),
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 200,
                width: double.infinity,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: ListTile(
                        onTap: (){
                          Navigator.pop(context);
                          if(lesson["id"]=="4"){
                            Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Lesson4(image1: lesson["image1"].toString(),
                                image2: lesson["image2"].toString(),
                                image3: lesson["image3"].toString(),
                                text1:lesson["description1"].toString(),
                                text2:lesson["description2"].toString(),
                                name: lesson["name"].toString(),
                                sounds: lesson["sounds"],
                              normal: lesson["normal"],
                            )));
                          }
                          else if(lesson["id"]=="1"){
                            Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Lesson1(
                                image1: lesson["image1"].toString(),
                                text1:lesson["description1"],
                                name: lesson["name"].toString(),
                            normal: lesson["normal"],)));
                          }
                          else if(lesson["id"]=="2"){
                            Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Lesson2(
                              image1: lesson["image1"].toString(),
                              text1:lesson["description1"].toString(),
                              text2:lesson["description2"].toString(),
                              name: lesson["name"].toString(),
                              image2: lesson["image2"].toString(),
                              normal: lesson["normal"],
                              slow: lesson["slow"].toString(),
                              sounds: lesson["sounds"],
                            )));
                          }
                          else if(lesson["id"]=="3"){
                            Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Lesson3(
                              image1: lesson["image1"].toString(),
                              text1:lesson["description1"].toString(),
                              name: lesson["name"].toString(),
                            )));
                          }
                          else if(lesson["id"]=="5"){
                            Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Lesson5(
                              image1: lesson["image1"].toString(),
                              image2: lesson["image2"].toString(),
                              image3: lesson["image3"].toString(),
                              text1:lesson["description1"].toString(),
                              text2:lesson["description2"].toString(),
                              name: lesson["name"].toString(),
                              sounds: lesson["sounds"],
                              normal: lesson["normal"],
                            )));
                          }
                          else if(lesson["id"]=="6"){
                            Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Lesson6(
                              image1: lesson["image1"].toString(),
                              text1:lesson["description1"].toString(),
                              name: lesson["name"].toString(),
                              normal: lesson["normal"],
                              sounds: lesson["sounds"],
                            )));
                          }
                          else if(lesson["id"]=="7"){
                            Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Lesson7(
                              image1: lesson["image1"].toString(),
                              image2: lesson["image2"].toString(),
                              image3: lesson["image3"].toString(),
                              image4: lesson["image4"].toString(),
                              image5: lesson["image5"].toString(),
                              text1:lesson["description1"].toString(),
                              text2:lesson["description2"].toString(),
                              text3:lesson["description3"].toString(),
                              text4:lesson["description4"].toString(),
                              name: lesson["name"].toString(),
                            )));
                          }
                          else if(lesson["id"]=="8"){
                            Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Lesson8(
                              image1: lesson["image1"].toString(),
                              image2: lesson["image2"].toString(),
                              image3: lesson["image3"].toString(),
                              image4: lesson["image4"].toString(),
                              text1:lesson["description1"].toString(),
                              text2:lesson["description2"].toString(),
                              text3:lesson["description3"].toString(),
                              name: lesson["name"].toString(),
                            )));
                          }
                          else if(lesson["id"]=="9"){
                            Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Lesson9(
                              image1: lesson["image1"].toString(),
                              image2: lesson["image2"].toString(),
                              text1:lesson["description1"].toString(),
                              name: lesson["name"].toString(),
                            )));
                          }
                          else if(lesson["id"]=="10"){
                            Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Lesson10(
                              image1: lesson["image1"].toString(),
                              image2: lesson["image2"].toString(),
                              image3: lesson["image3"].toString(),
                              image4: lesson["image4"].toString(),
                              text1:lesson["description1"].toString(),
                              text2:lesson["description2"].toString(),
                              text3:lesson["description3"].toString(),
                              text4:lesson["description4"].toString(),
                              name: lesson["name"].toString(),
                            )));
                          }
                          else if(lesson["id"]=="11"){
                            Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Lesson11(
                              image1: lesson["image1"].toString(),
                              image2: lesson["image2"].toString(),
                              image3: lesson["image3"].toString(),
                              image4: lesson["image4"].toString(),
                              image5: lesson["image5"].toString(),
                              image6: lesson["image6"].toString(),
                              text1:lesson["description1"].toString(),
                              text2:lesson["description2"].toString(),
                              text3:lesson["description3"].toString(),
                              text4:lesson["description4"].toString(),
                              text5:lesson["description5"].toString(),
                              name: lesson["name"].toString(),
                            )));
                          }


                        },
                        leading: Image.asset("assets/images/book.png",height: 30,),
                        title:const Text("قراءة  الدرس",
                        style: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 18,
                            fontWeight: FontWeight.w900
                        ),),
                      ),
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: ListTile(
                        onTap: (){
                          Navigator.pop(context);
                          Navigator.push(context, MaterialPageRoute(builder: (ctx)=>CanvasPainting(spelling:lesson["spelling"])));
                        },
                        leading: Image.asset("assets/images/write.png",height: 30,),
                        title:const Text("املاء على الصبورة",
                          style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 18,
                            fontWeight: FontWeight.w900
                          ),),
                      ),
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: ListTile(
                        onTap: (){
                          Navigator.pop(context);
                          Navigator.push(context, MaterialPageRoute(builder: (ctx)=>WriteWithKeyBoard(spelling:lesson["spelling"])));
                        },
                        leading: Image.asset("assets/images/keyboard.png",height: 30,),
                        title:const Text("املاء بالكيبورد",
                          style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 18,
                              fontWeight: FontWeight.w900
                          ),),
                      ),
                    ),
                  ],
                ),

              ),
              Positioned(
                top: 0,
                left: 63,
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    width: 100,
                    height: 10,
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
