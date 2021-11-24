import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:second_elementry_school/readandwriteexersises/read_ex2.dart';
import 'package:second_elementry_school/widgets/play_audio.dart';

import '../main.dart';

class ReadEx1 extends StatefulWidget {
   ReadEx1({Key key}) : super(key: key);

  @override
  State<ReadEx1> createState() => _ReadEx1State();
}

class _ReadEx1State extends State<ReadEx1> {
  final String image1="assets/images/50.png";

  final String image2="assets/images/51.png";

  bool isFocuse=true;

  final String text1="سيـناء";
  final String text2="سوق";
  final String text3="سامي";

  final String pref1="سيـ";
  final String pref2="سو";
  final String pref3="سا";

  bool correct1=false;
  bool correct2=false;
  bool correct3=false;

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
                     const Text("اكمل كتابة الكلمة بما يناسبها",
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: "Cairo",
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),),
                   ],
                 ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       SingleChildScrollView(
                         child: Column(
                           children: [
                             Container(
                               width: 100,
                               padding:const EdgeInsets.all(10),
                               decoration: BoxDecoration(
                                 border: Border.all(color: Colors.blue,width: 2),
                               ),
                               child: Center(
                                 child: Text(
                                   text1,style:const TextStyle(
                                   color: Colors.black,
                                   fontSize: 25,
                                 ),
                                 ),
                               ),
                             ),
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
                                 ): TextField(
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
                                     labelText: "$pref1...",
                                     labelStyle:const TextStyle(
                                       color: Colors.red,
                                       fontSize: 18
                                     ),
                                     enabled: true,
                                     prefixText: pref1,
                                     prefixStyle:const TextStyle(
                                       fontSize: 18,
                                       color: Colors.red,
                                     )
                                   ),
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),
                       SizedBox(
                         width: 30,
                       ),
                       Expanded(child: Image.asset(image1)),
                       SizedBox(
                         width: 30,
                       ),
                       SingleChildScrollView(
                         child: Column(
                           children: [
                             Container(
                               width: 100,
                               padding:const EdgeInsets.all(10),
                               decoration: BoxDecoration(
                                 border: Border.all(color: Colors.blue,width: 2),
                               ),
                               child: Center(
                                 child: Text(
                                   text2,style:const TextStyle(
                                   color: Colors.black,
                                   fontSize: 25,
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
                                 ): TextField(
                                   onChanged: (value){
                                     if(pref2+value==text2){
                                       playGood();
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
                                       labelText: "$pref2...",
                                       labelStyle:const TextStyle(
                                           color: Colors.red,
                                           fontSize: 18
                                       ),
                                       enabled: true,
                                       prefixText: pref2,
                                       prefixStyle:const TextStyle(
                                         fontSize: 18,
                                         color: Colors.red,
                                       )
                                   ),
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),
                       SizedBox(
                         width: 30,
                       ),
                       Expanded(child: Image.asset(image2)),
                       SizedBox(
                         width: 30,
                       ),
                       SingleChildScrollView(
                         child: Column(
                           children: [
                             Container(
                               width: 100,
                               padding:const EdgeInsets.all(10),
                               decoration: BoxDecoration(
                                 border: Border.all(color: Colors.blue,width: 2),
                               ),
                               child: Center(
                                 child: Text(
                                   text3,style:const TextStyle(
                                   color: Colors.black,
                                   fontSize: 25,
                                 ),
                                 ),
                               ),
                             ),
                             SizedBox(
                               width: 100,
                               child: Directionality(
                                 textDirection: TextDirection.rtl,
                                 child:correct3?Center(
                                   child: Text(text3,
                                     style:const TextStyle(
                                       color: Colors.green,
                                       fontSize: 18,
                                     ),),
                                 ): TextField(
                                   onChanged: (value){
                                     if(pref3+value==text3){
                                       playGood();
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
                                       labelText: "$pref3...",
                                       labelStyle:const TextStyle(
                                           color: Colors.red,
                                           fontSize: 18
                                       ),
                                       enabled: true,
                                       prefixText: pref3,
                                       prefixStyle:const TextStyle(
                                         fontSize: 18,
                                         color: Colors.red,
                                       )
                                   ),
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),
                     ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (ctx)=>ReadEx2()));
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
