import 'dart:async';

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:second_elementry_school/draganddropexercises/ex5.dart';
import 'package:second_elementry_school/draganddropexercises/ex9.dart';
import 'package:second_elementry_school/widgets/play_audio.dart';
import 'package:second_elementry_school/widgets/shake_widget.dart';

import '../main.dart';
class Ex8 extends StatefulWidget {
  const Ex8({Key key}) : super(key: key);

  @override
  _Ex8State createState() => _Ex8State();
}

class _Ex8State extends State<Ex8> {

  AudioPlayer player ;
  bool f1=false;
  bool f2=false;
  bool f3=false;
  bool f4=false;

  String image1="assets/images/31.png";
  String image2="assets/images/30.png";
  String image3="assets/images/32.png";
  String image4="assets/images/29.png";

  String sucText1="بيض";
  String sucText2="قفص";
  String sucText3="محراث";
  String sucText4="باب";

  String mainText1="...بيـ";
  String mainText2="...قفـ";
  String mainText3="...محرا";
  String mainText4="...با";

  String value4="ب";
  String value1="ض";
  String value2="ص";
  String value3="ث";

  List<Map<String,String>> letters=[
    {
      "letter":"ث",
      "value":"ث"
    },
    {
      "letter":"ض",
      "value":"ض"
    },
    {
      "letter":"ص",
      "value":"ص"
    },
    {
      "letter":"ب",
      "value":"ب"
    }
  ];
  bool isAccept1=false;
  bool isAccept2=false;
  bool isAccept3=false;
  bool isAccept4=false;

  bool shake1=false;
  bool shake2=false;
  bool shake3=false;
  bool shake4=false;
  @override
  void initState() {
    super.initState();
    player=AudioPlayer();
  }
  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final w=MediaQuery.of(context).size.width;
    final h=MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("اسحب الحرف الى الكلمة الصحيحة",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                    fontFamily: "Cairo",
                  ),),
                Container(
                  padding:const EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width*.5,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue,
                          width: 2)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: letters.map((e) =>  Draggable(
                      data: e,
                      feedback: Container(
                        padding:const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.red,width: 4)),
                        child: Material(
                          color: Colors.transparent,
                          child: Text(e["letter"],
                            style:const  TextStyle(
                              color: Colors.blue,
                              fontSize: 50,
                              fontWeight: FontWeight.w900,
                            ),),
                        ),
                      ),
                      child: Text(e["letter"],
                        style:const  TextStyle(
                          color: Colors.red,
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                        ),),
                      childWhenDragging: Text(e["letter"],
                        style:const  TextStyle(
                          color: Colors.blue,
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                        ),),
                    ),).toList(),
                  ),

                ),
                SizedBox(
                  height: h*.05,
                ),
                Expanded(
                  child: SizedBox(
                    height: h*.4,
                    width: double.infinity,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Image.asset(image1,
                                  height: h*.2, ),
                                f4?Container(
                                  width: w*.2,
                                  height: h*.2,
                                  decoration: BoxDecoration(
                                    borderRadius:  BorderRadius.circular(10),
                                    border: Border.all(color: Colors.green),
                                    color: Colors.green,

                                  ),
                                  child: Center(
                                    child:  Text(sucText1,
                                      style:const  TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontFamily: "Cairo",
                                        fontWeight: FontWeight.bold,
                                      ),),
                                  ),
                                ) :shake4?ShakeWidget(child: Container(
                                  width: w*.2,
                                  height: h*.2,
                                  decoration: BoxDecoration(
                                    borderRadius:  BorderRadius.circular(10),
                                    border: Border.all(color: Colors.red),
                                    color: Colors.red,

                                  ),
                                  child:  Center(
                                    child: Text(sucText1,
                                      style:const  TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontFamily: "Cairo",
                                        fontWeight: FontWeight.bold,
                                      ),),
                                  ),
                                )): DragTarget(
                                  builder: (context, acceptedItem, rejectedItem){
                                    return  Container(
                                      width: w*.2,
                                      height: h*.2,
                                      decoration: BoxDecoration(
                                        borderRadius:  BorderRadius.circular(10),
                                        border: Border.all(color: Colors.blue),
                                        color: isAccept4?Colors.grey:const Color(0xffFAFAFA),

                                      ),
                                      child: Center(
                                        child:   Text(mainText1,
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 25,
                                            fontFamily: "Cairo",
                                            fontWeight: FontWeight.bold,
                                          ),),
                                      ),
                                    );
                                  },
                                  onAccept: (item)async{
                                    if((item as Map )["letter"]==value1){
                                      playGood();
                                      setState(() {
                                        f4=true;
                                      });
                                      setState(() {
                                        isAccept4=false;
                                      });
                                    }
                                    else{
                                      playWrong().whenComplete(() {
                                        Timer(const Duration(milliseconds: 1000), () {
                                          setState(() {
                                            shake4=false;
                                          });
                                        });
                                      });;
                                      setState(() {
                                        shake4=true;
                                        isAccept4=false;
                                      });
                                    }
                                  },
                                  onWillAccept: (item){
                                    setState(() {
                                      isAccept4=true;
                                    });
                                    return true;
                                  },
                                  onLeave: (item){
                                    setState(() {
                                      isAccept4=false;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Image.asset(image2,
                                  height: h*.2,),
                                f3?Container(
                                  width: w*.2,
                                  height: h*.2,
                                  decoration: BoxDecoration(
                                    borderRadius:  BorderRadius.circular(10),
                                    border: Border.all(color: Colors.green),
                                    color: Colors.green,

                                  ),
                                  child: Center(
                                    child:  Text(sucText2,
                                      style:const  TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontFamily: "Cairo",
                                        fontWeight: FontWeight.bold,
                                      ),),
                                  ),
                                ) :shake3?ShakeWidget(child: Container(
                                  width: w*.2,
                                  height: h*.2,
                                  decoration: BoxDecoration(
                                    borderRadius:  BorderRadius.circular(10),
                                    border: Border.all(color: Colors.red),
                                    color: Colors.red,

                                  ),
                                  child:  Center(
                                    child: Text(sucText2,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontFamily: "Cairo",
                                        fontWeight: FontWeight.bold,
                                      ),),
                                  ),
                                )): DragTarget(
                                  builder: (context, acceptedItem, rejectedItem){
                                    return  Container(
                                      width: w*.2,
                                      height: h*.2,
                                      decoration: BoxDecoration(
                                        borderRadius:  BorderRadius.circular(10),
                                        border: Border.all(color: Colors.blue),
                                        color: isAccept3?Colors.grey:const Color(0xffFAFAFA),
                                      ),
                                      child: Center(
                                        child:   Text(mainText2,
                                          style:const  TextStyle(
                                            color: Colors.black,
                                            fontSize: 25,
                                            fontFamily: "Cairo",
                                            fontWeight: FontWeight.bold,
                                          ),),
                                      ),
                                    );
                                  },
                                  onAccept: (item){
                                    if((item as Map )["letter"]==value2){
                                      playGood();
                                      setState(() {
                                        f3=true;
                                      });
                                      setState(() {
                                        isAccept3=false;
                                      });
                                    }
                                    else{
                                      playWrong().whenComplete(() {
                                        Timer(const Duration(milliseconds: 1000), () {
                                          setState(() {
                                            shake3=false;
                                          });
                                        });
                                      });
                                      setState(() {
                                        shake3=true;
                                        isAccept3=false;
                                      });
                                    }
                                  },
                                  onWillAccept: (item){
                                    setState(() {
                                      isAccept3=true;
                                    });
                                    return true;
                                  },
                                  onLeave: (item){
                                    setState(() {
                                      isAccept3=false;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Image.asset(image3,
                                  height: h*.2,),
                                f2?Container(
                                  width: w*.2,
                                  height: h*.2,
                                  decoration: BoxDecoration(
                                    borderRadius:  BorderRadius.circular(10),
                                    border: Border.all(color: Colors.green),
                                    color: Colors.green,

                                  ),
                                  child:  Center(
                                    child: Text(sucText3,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontFamily: "Cairo",
                                        fontWeight: FontWeight.bold,
                                      ),),
                                  ),
                                ) :shake2?ShakeWidget(child: Container(
                                  width: w*.2,
                                  height: h*.2,
                                  decoration: BoxDecoration(
                                    borderRadius:  BorderRadius.circular(10),
                                    border: Border.all(color: Colors.red),
                                    color: Colors.red,

                                  ),
                                  child:  Center(
                                    child: Text(sucText3,
                                      style:const  TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontFamily: "Cairo",
                                        fontWeight: FontWeight.bold,
                                      ),),
                                  ),
                                )):  DragTarget(
                                  builder: (context, acceptedItem, rejectedItem){
                                    return  Container(
                                      width: w*.2,
                                      height: h*.2,
                                      decoration: BoxDecoration(
                                        borderRadius:  BorderRadius.circular(10),
                                        border: Border.all(color: Colors.blue),
                                        color: isAccept2?Colors.grey:const Color(0xffFAFAFA),

                                      ),
                                      child: Center(
                                        child:   Text(mainText3,
                                          style:const  TextStyle(
                                            color: Colors.black,
                                            fontSize: 25,
                                            fontFamily: "Cairo",
                                            fontWeight: FontWeight.bold,
                                          ),),
                                      ),
                                    );
                                  },
                                  onAccept: (item){
                                    if((item as Map )["letter"]==value3){
                                      playGood();
                                      setState(() {
                                        f2=true;
                                      });
                                      setState(() {
                                        isAccept2=false;
                                      });
                                    }
                                    else{
                                      playWrong().whenComplete(() {
                                        Timer(const Duration(milliseconds: 1000), () {
                                          setState(() {
                                            shake2=false;
                                          });
                                        });
                                      });
                                      setState(() {
                                        shake2=true;
                                        isAccept2=false;
                                      });
                                    }
                                  },
                                  onWillAccept: (item){
                                    setState(() {
                                      isAccept2=true;
                                    });
                                    return true;
                                  },
                                  onLeave: (item){
                                    setState(() {
                                      isAccept2=false;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Image.asset(image4,
                                  height: h*.2,),
                                f1?Container(
                                  width: w*.2,
                                  height: h*.2,
                                  decoration: BoxDecoration(
                                    borderRadius:  BorderRadius.circular(10),
                                    border: Border.all(color: Colors.green),
                                    color: Colors.green,

                                  ),
                                  child:  Center(
                                    child: Text(sucText4,
                                      style:const  TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontFamily: "Cairo",
                                        fontWeight: FontWeight.bold,
                                      ),),
                                  ),
                                ) :shake1?ShakeWidget(child: Container(
                                  width: w*.2,
                                  height: h*.2,
                                  decoration: BoxDecoration(
                                    borderRadius:  BorderRadius.circular(10),
                                    border: Border.all(color: Colors.red),
                                    color: Colors.red,

                                  ),
                                  child:  Center(
                                    child: Text(sucText4,
                                      style:const  TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontFamily: "Cairo",
                                        fontWeight: FontWeight.bold,
                                      ),),
                                  ),
                                ))  :DragTarget(
                                  builder: (context, acceptedItem, rejectedItem){
                                    return  Container(
                                      decoration: BoxDecoration(
                                        borderRadius:  BorderRadius.circular(10),
                                        border: Border.all(color: Colors.blue),
                                        color: isAccept1?Colors.grey:const Color(0xffFAFAFA),
                                      ),
                                      width: w*.2,
                                      height: h*.2,
                                      child: Center(
                                        child:   Text(mainText4,
                                          style:const  TextStyle(
                                            color: Colors.black,
                                            fontSize: 25,
                                            fontFamily: "Cairo",
                                            fontWeight: FontWeight.bold,
                                          ),),
                                      ),
                                    );
                                  },
                                  onAccept: (item){
                                    if((item as Map )["letter"]==value4){
                                      playGood().then((value) {
                                        setState(() {
                                          f1=true;
                                        });
                                      } );
                                      setState(() {
                                        isAccept1=false;
                                      });
                                    }
                                    else{
                                      playWrong().whenComplete(() {
                                        Timer(const Duration(milliseconds: 1000), () {
                                          setState(() {
                                            shake1=false;
                                          });
                                        });
                                      });
                                      setState(() {
                                        shake1=true;
                                        isAccept1=false;
                                      });
                                    }
                                  },
                                  onWillAccept: (item){
                                    setState(() {
                                      isAccept1=true;
                                    });
                                    return true;
                                  },
                                  onLeave: (item){
                                    setState(() {
                                      isAccept1=false;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              top: 0.0,
              left: 0.0,
              child: Visibility(
                visible: f1&&f2&&f3&&f4,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (ctx)=>const Ex9()));
                  },
                  child: Row(
                    children: const[
                      Icon(Icons.arrow_back_ios_sharp,
                        size: 40,color: Colors.green,),
                      Text("التالي",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 30,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w900
                        ),)
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0.0,
              top: 0.0,
              child: IconButton(
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=>const MainPage()));

                },
                icon:const Icon(Icons.home,
                  color: Colors.blue,
                  size: 40,),
              ),
            ),
          ],
        ),
      ),
    );
  }



}