import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:second_elementry_school/page_manager.dart';
import 'package:second_elementry_school/widgets/important_widget.dart';
import 'package:second_elementry_school/widgets/play_audio.dart';

import '../main.dart';
class Lesson1 extends StatefulWidget {
  final String image1;
  final List<String> text1;
  final String name;
  final List<AudioSource> normal;

  Lesson1({
    @required this.image1,
    @required this.text1,
    @required this.name,
    @required this.normal
  });
  @override
  _Lesson1State createState() => _Lesson1State();
}

class _Lesson1State extends State<Lesson1> {

  int playerType=0;
  bool isPlayOrNo=false;
  bool isFastPlay=false;
  PageManager pageManager2;
  @override
  void initState() {
    super.initState();
    pageManager2=PageManager(widget.normal);
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
                  children: [ Column(
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
                children: [
                 Container(
                   margin: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(20)
                   ),
                   child: Column(
                    children: [
                      Container(
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: ExactAssetImage(widget.image1),
                              fit: BoxFit.cover),
                        ),

                      ),
                      //--------- Text 1 -------------
                      SizedBox(height: 30,),
                      SizedBox(
                        height: 220,
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Center(
                            child: GridView.builder(
                            padding: const EdgeInsets.only(right: 30.0),
                            itemCount: widget.text1.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                             crossAxisCount: 2,
                              mainAxisSpacing: 2,
                              childAspectRatio: 4,
                              crossAxisSpacing: 0.5,
                            ),
                                itemBuilder: (context,index){
                              return Text(
                                widget.text1[index],style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),);
                            }),
                          ),
                        ),
                      ),
                    ],
                ),
                 ),
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
