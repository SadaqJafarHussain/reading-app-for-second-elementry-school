import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:second_elementry_school/widgets/important_widget.dart';

import '../main.dart';
import '../page_manager.dart';
class Lesson6 extends StatefulWidget {
  final String image1;
  final String text1;
  final String name;
  final List<AudioSource> sounds;
  final List<AudioSource> normal;


  Lesson6({
    @required this.image1,
    @required this.text1,
    @required this.name,
    @required this.normal,
    @required this.sounds
  });
  @override
  _Lesson6State createState() => _Lesson6State();
}

class _Lesson6State extends State<Lesson6> {
  int playerType=0;
  PageManager pageManager;
  bool isPlayOrNo=false;
  PageManager pageManager2;
  List<String> wordsText1=[];

  @override
  void initState() {
    super.initState();
    pageManager2=PageManager(widget.normal);
    pageManager=PageManager(widget.sounds);
    pageManager.currentSongTitleNotifier.addListener(() {
          setState(() {
            wordsText1.add("${pageManager.currentSongTitleNotifier.value} ");
          });
    });
  }
  @override
  void dispose() {
    super.dispose();
    pageManager.dispose();
    pageManager2.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const  Color(0xff74cef3),
      body: SafeArea(
        child: Center(
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
                        color: Colors.white,
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
                  children:[ Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 200,
                              height: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: ExactAssetImage(widget.image1),
                                    fit: BoxFit.fill),
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
                      ],
                    ),
                  ),
          ]
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
