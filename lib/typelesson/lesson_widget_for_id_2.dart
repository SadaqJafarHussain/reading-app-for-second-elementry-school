import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:dynamic_text_highlighting/dynamic_text_highlighting.dart';
import 'package:second_elementry_school/notifiers/play_button_notifier.dart';
import 'package:second_elementry_school/notifiers/repeat_button_notifier.dart';
import 'package:second_elementry_school/page_manager.dart';
import 'package:second_elementry_school/widgets/important_widget.dart';
import 'package:second_elementry_school/widgets/play_audio.dart';

import '../main.dart';

class Lesson2 extends StatefulWidget {
  final String image1;
  final String image2;
  final String text1;
  final String text2;
  final String name;
  final String slow;
  final List<AudioSource> normal;
  final List<AudioSource> sounds;

  Lesson2({
    @required this.image1,
    @required this.image2,
    @required this.text1,
    @required this.text2,
    @required this.name,
    this.sounds,
    this.slow,
    this.normal,
  });
  @override
  _Lesson2State createState() => _Lesson2State();
}


class _Lesson2State extends State<Lesson2> {

  int playerType=0;
  ScrollController _controller = new ScrollController();
   PageManager pageManager;
   PageManager pageManager2;
   List<String> wordsText1=[];
   List<String> wordsText2=[];
  @override
  void initState() {
    super.initState();
    pageManager = PageManager(widget.sounds);
    pageManager2= PageManager(widget.normal);
   pageManager.currentSongTitleNotifier.addListener(() {
     List<String> originalText=widget.text1.trim().split(' ');
     if(wordsText1.isNotEmpty&&(originalText[originalText.length-1]==wordsText1[wordsText1.length-1].trim())){
       _controller.animateTo(MediaQuery.of(context).size.height, duration:const Duration(milliseconds: 200), curve: Curves.easeOut);
             if(wordsText2.isNotEmpty&&(wordsText2.last=="${pageManager.currentSongTitleNotifier.value} ")){
               setState(() {
                 wordsText2.remove(wordsText2.last);
               });
             }else{
               setState(() {
                 wordsText2.add("${pageManager.currentSongTitleNotifier.value} ");
               });
             }
     }
     else {
         if(wordsText1.isNotEmpty&&(wordsText1.last=="${pageManager.currentSongTitleNotifier.value} ")){
           setState(() {
             wordsText1.remove(wordsText1.last);
           });
         }else{
           setState(() {
             wordsText1.add("${pageManager.currentSongTitleNotifier.value} ");
           });
         }
     }
    });


  }
  bool isPlayOrNo=false;
   @override
  void dispose() {
     super.dispose();
     pageManager.dispose();
     _controller.dispose();
     pageManager2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const  Color(0xff74cef3),
      body: SafeArea(
        child: Column(
          children: [
           playerType==0?Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        height: 70,
        width: 300,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(bottomRight:Radius.circular(30),
              bottomLeft: Radius.circular(30)),
          color: Color(0Xffdd8bbb),
        ),
        child:  Center(
          child: Text(
            widget.name,
            style:const TextStyle(fontSize: 30,
                fontWeight: FontWeight.w900),
          ),
        ),
      ) :Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 140,
              width: 300,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight:Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                color: Color(0Xffdd8bbb),
              ),
              child: Column(
                  children: [
                    playerType==1?
                        Column(
                          children: [
                             PlayButton(
                                 pageManager: pageManager,
                             ontap: (isPlay){
                                   setState(() {
                                     isPlayOrNo=isPlay;
                                   });
                             },),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0),
                              child: AudioProgressBar(pageManager: pageManager),
                            ),
                          ],
                        ): Column(
                      children: [
                        PlayButton(
                          pageManager: pageManager2,
                        ontap: (isPlay){
                        },),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: AudioProgressBar(pageManager: pageManager2),
                        ),
                      ],
                    ),
                    Text(
                    widget.name,
                    style:const TextStyle(fontSize: 30,
                    fontWeight: FontWeight.w900),
                  ),]
              ),
            ),
            Expanded(
              child: ListView(
                controller: _controller,
                 children: [
                   Container(
                     margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),
                     ),
                     child: Column(
                       children: [
                         Container(
                           width: 400,
                           height: 200,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             image: DecorationImage(
                                 image: ExactAssetImage(widget.image1),
                                 fit: BoxFit.cover),
                           ),
                         ),
                         isPlayOrNo&&wordsText1.isNotEmpty? Padding(
                           padding: const EdgeInsets.all(30.0),
                           child: Center(
                             child: Material(
                               child: RichText(
                                 textDirection: TextDirection.rtl,
                                 text: TextSpan(
                                   text: wordsText1.sublist(0,wordsText1.length-1).join(''),
                                   style:const TextStyle(color: Colors.black,
                                       fontWeight: FontWeight.bold,
                                       fontSize: 20),
                                   children: <TextSpan>[
                                     TextSpan(text: wordsText1[wordsText1.length-1], style:const TextStyle(fontWeight: FontWeight.bold,color: Colors.deepOrange,fontSize: 23)),
                                   ],
                                 ),
                               ),
                             ),
                           ),
                         ):Padding(
                           padding: const EdgeInsets.all(30.0),
                           child: Center(
                             child: Text(
                               widget.text1,
                               textDirection: TextDirection.rtl,
                               style:const TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 20,
                               ),
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
                   //--------- Text 1 -------------

                   //--------- container image 2 -------------
                   Container(
                     margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),
                     ),
                     child: Column(
                       children: [
                         Container(
                           width: 400,
                           height: 250,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             image: DecorationImage(
                                 image: ExactAssetImage(widget.image2),
                                 fit: BoxFit.cover),
                           ),
                         ),
                         isPlayOrNo&&wordsText2.isNotEmpty?Padding(
                           padding: const EdgeInsets.all(30.0),
                           child: Center(
                             child: Material(
                               child: RichText(
                                 textDirection: TextDirection.rtl,
                                 text: TextSpan(
                                   text: wordsText2.sublist(0,wordsText2.length-1).join(''),
                                   style:const TextStyle(color: Colors.black,
                                       fontWeight: FontWeight.bold,
                                       fontSize: 20),
                                   children: <TextSpan>[
                                     TextSpan(text: wordsText2[wordsText2.length-1], style:const TextStyle(fontWeight: FontWeight.bold,color: Colors.deepOrange,fontSize: 23)),
                                   ],
                                 ),
                               ),
                             ),
                           ),
                         ) :Padding(
                           padding: const EdgeInsets.all(40.0),
                           child: Center(
                             child: Text(
                               widget.text2,
                               textDirection: TextDirection.rtl,
                               textAlign: TextAlign.justify,
                               style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 20,
                               ),
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
                   //--------- Text 2 -------------


                 ],
               ),
            ),
            Container(
                alignment: Alignment.center,
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
                    InkWell(onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=> const MainPage()));

                    }, child: Image.asset("assets/images/home.png",
                    height: 40,
                    width: 40,)),
                    InkWell(onTap: (){
                      showDie(context);
                    }, child: Image.asset("assets/images/speaker.png",
                      height: 50,
                      width: 50,)),
                    InkWell(onTap: (){
                      Navigator.pop(context);
                    }, child: Image.asset("assets/images/book.png",
                      height: 35,
                      width: 35,)),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
  showDie(BuildContext context){
    showGeneralDialog(
      barrierColor: Colors.transparent,
      context: context,
      barrierDismissible: true,
      barrierLabel: 'Label',
      //Dismiss alert dialog when set true
      pageBuilder: (context,___,__) {
        //Clips its child in a oval shape
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 70),
          child: AlertDialog(
            backgroundColor: Colors.purple.shade400,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            alignment: Alignment.bottomCenter,
            content: Container(
              height: 100,
              width: double.infinity,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                      setState(() {
                        playerType=1;
                        pageManager2.stop();
                      });
                    },
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:
                       [
                         Image.asset("assets/images/speaker.png",height: 40,),
                        const Text("متقطع",
                          style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 18,
                            color: Colors.white,
                          ),),]
                       ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                      setState(() {
                        playerType=2;
                        isPlayOrNo=false;
                        pageManager.stop();
                      });
                    },
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[ Image.asset("assets/images/speaker.png",height: 40,),
                        const Text("مستمر",
                          style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 18,
                            color: Colors.white
                          ),),]
                      ),
                    ),
                  ),
                ],
              ),

            ),
          ),
        );
      },
    );
  }
}
