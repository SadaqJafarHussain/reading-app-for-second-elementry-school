


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:second_elementry_school/readandwriteexersises/read_ex3.dart';
import 'package:second_elementry_school/readandwriteexersises/read_ex6.dart';
import 'package:second_elementry_school/readandwriteexersises/read_ex9.dart';
import 'package:second_elementry_school/widgets/play_audio.dart';

import '../main.dart';

class ReadEx7 extends StatefulWidget {
  ReadEx7({Key key}) : super(key: key);

  @override
  State<ReadEx7> createState() => _ReadEx7State();
}

class _ReadEx7State extends State<ReadEx7> {

  final String image1="assets/images/56.png";

  final String text1="صادق";
  final String text2="طارق";
  final String text3="كاتب";
  final String text4="صَـديق";
  final String text5="طَريق";
  final String text6="كـتب";

  final String pref1="صا";
  final String pref2="طا";
  final String pref3="كا";
  final String pref4="صَـ";
  final String pref5="طَ";
  final String pref6="كـ";

  bool correct1=false;
  bool correct2=false;
  bool correct3=false;
  bool correct4=false;
  bool correct5=false;
  bool correct6=false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        SystemChannels.textInput.invokeMethod('TextInput.hide');
      },
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=>const MainPage()));
                        },
                        icon:Row(
                          children: const[
                            Icon(Icons.home,
                              color: Colors.blue,
                              size: 30,),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      const Text("اقرأ ثم اكمل",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Cairo",
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*.6,
                    width: MediaQuery.of(context).size.width*.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 100,
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child:correct1?
                                Center(
                                  child: Text(text1,
                                    style:const TextStyle(
                                      color: Colors.green,
                                      fontSize: 18,
                                    ),),
                                )
                                    : TextField(
                                  onChanged: (value){
                                    if(pref1+value==text1){
                                      playGood();
                                      setState(() {
                                        correct1=true;
                                      });
                                    }
                                  },
                                  textDirection: TextDirection.rtl,
                                  decoration: InputDecoration(
                                    border:const OutlineInputBorder(
                                        borderSide: BorderSide.none
                                    ),
                                    prefixStyle:const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                    labelStyle: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                    prefixText: pref1,
                                    labelText: "$pref1...",
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 100,
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child:correct2?
                                Center(
                                  child: Text(text2,
                                    style:const TextStyle(
                                      color: Colors.green,
                                      fontSize: 18,
                                    ),),
                                )
                                    : TextField(
                                  onChanged: (value){
                                    playGood();
                                    if(pref2+value==text2){
                                      setState(() {
                                        correct2=true;
                                      });
                                    }
                                  },
                                  textDirection: TextDirection.rtl,
                                  decoration: InputDecoration(
                                    border:const OutlineInputBorder(
                                        borderSide: BorderSide.none
                                    ),
                                    prefixStyle:const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                    labelStyle: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                    prefixText: pref2,
                                    labelText: "$pref2...",
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 100,
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child:correct3?
                                Center(
                                  child: Text(text3,
                                    style:const TextStyle(
                                      color: Colors.green,
                                      fontSize: 18,
                                    ),),
                                ): TextField(
                                  onChanged: (value){
                                    playGood();
                                    if(pref3+value==text3){
                                      setState(() {
                                        correct3=true;
                                      });
                                    }
                                  },
                                  textDirection: TextDirection.rtl,
                                  decoration: InputDecoration(
                                    border:const OutlineInputBorder(
                                        borderSide: BorderSide.none
                                    ),
                                    prefixStyle:const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                    labelStyle: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                    prefixText: pref3,
                                    labelText: "$pref3...",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [
                            Container(
                                width: 80,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blue,width: 2)
                                ),
                                child: Center(child: Text(text1,
                                  style:const TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                  ),))),
                            Container(
                                width: 80,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blue,width: 2)
                                ),
                                child: Center(child: Text(text2,
                                  style:const TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                  ),))),
                            Container(
                                width: 80,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blue,width: 2)
                                ),
                                child: Center(child: Text(text3,
                                  style:const TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                  ),))),
                          ],
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Expanded(child: Image.asset(image1)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 100,
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child:correct4?
                                Center(
                                  child: Text(text4,
                                    style:const TextStyle(
                                      color: Colors.green,
                                      fontSize: 18,
                                    ),),
                                ): TextField(
                                  onChanged: (value){
                                    if(pref4+value==text4){
                                      playGood();
                                      setState(() {
                                        correct4=true;
                                      });
                                    }
                                  },
                                  textDirection: TextDirection.rtl,
                                  decoration: InputDecoration(
                                    border:const OutlineInputBorder(
                                        borderSide: BorderSide.none
                                    ),
                                    prefixStyle:const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                    labelStyle: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                    prefixText: pref4,
                                    labelText: "$pref4...",
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 100,
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child:correct5?
                                Center(
                                  child: Text(text5,
                                    style:const TextStyle(
                                      color: Colors.green,
                                      fontSize: 18,
                                    ),),
                                ): TextField(
                                  onChanged: (value){
                                    playGood();
                                    if(pref5+value==text5){
                                      setState(() {
                                        correct5=true;
                                      });
                                    }
                                  },
                                  textDirection: TextDirection.rtl,
                                  decoration: InputDecoration(
                                    border:const OutlineInputBorder(
                                        borderSide: BorderSide.none
                                    ),
                                    prefixStyle:const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                    labelStyle: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                    prefixText: pref5,
                                    labelText: "$pref5...",
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 100,
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child:correct6?
                                Center(
                                  child: Text(text6,
                                    style:const TextStyle(
                                      color: Colors.green,
                                      fontSize: 18,
                                    ),),
                                ): TextField(
                                  onChanged: (value){
                                    if(pref6+value==text6){
                                      playGood();
                                      setState(() {
                                        correct6=true;
                                      });
                                    }
                                  },
                                  textDirection: TextDirection.rtl,
                                  decoration: InputDecoration(
                                    border:const OutlineInputBorder(
                                        borderSide: BorderSide.none
                                    ),
                                    prefixStyle:const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                    labelStyle: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                    prefixText: pref6,
                                    labelText: "$pref6...",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [
                            Container(
                                width: 80,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blue,width: 2)
                                ),
                                child: Center(child: Text(text4,
                                  style:const TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                  ),))),
                            Container(
                                width: 80,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blue,width: 2)
                                ),
                                child: Center(child: Text(text5,
                                  style:const TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                  ),))),
                            Container(
                                width: 80,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blue,width: 2)
                                ),
                                child: Center(child: Text(text6,
                                  style:const TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                  ),))),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (ctx)=>ReadEx9()));
                          },
                          child: Container(width: 150,
                            height: 60,
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
                            height: 60,
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
