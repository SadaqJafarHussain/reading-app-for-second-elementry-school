import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:second_elementry_school/modals/item.dart';
import 'package:second_elementry_school/widgets/play_audio.dart';

class TestsPage extends StatefulWidget {
  const TestsPage({Key key}) : super(key: key);

  @override
  _TestsPageState createState() => _TestsPageState();
}

class _TestsPageState extends State<TestsPage> {

 AudioPlayer player ;

   ConfettiController controllerTopCenter;
  void initController() {
    controllerTopCenter =
        ConfettiController(duration: const Duration(seconds: 3));
  }
  int puzzel1 = 0;
  int puzzel2 = 1;
  int puzzels3 = 2;
  int puzzel4 = 3;
  bool isPuzzeled1 = false;
  bool isPuzzeled2 = false;
  bool isPuzzeled3 = false;
  bool isPuzzeled4 = false;

  bool gameOver = false;
  double score = 0.0;
  List<ItemModal> items = [];
  List<ItemModal> items2 = [];
  initData() {
    items = [
      ItemModal(img: "assets/images/1.png", value: "fire", name: "نار"),
      ItemModal(img: "assets/images/2.png", value: "mouse", name: "فار"),
      ItemModal(img: "assets/images/3.png", value: "duck", name: "وز"),
      ItemModal(img: "assets/images/4.png", value: "house", name: "دار"),
      ItemModal(img: "assets/images/5.png", value: "message", name: "ظرف"),
      ItemModal(img: "assets/images/6.png", value: "flower", name: "ورد"),
      ItemModal(img: "assets/images/7.png", value: "بط", name: "بط"),
      ItemModal(img: "assets/images/8.png", value: "حصان", name: "حصان"),
      ItemModal(img: "assets/images/9.png", value: "أذن", name: "أذن"),
      ItemModal(img: "assets/images/10.png", value: "اناء", name: "اناء"),
      ItemModal(img: "assets/images/11.png", value: "ارنب", name: "ارنب"),
      ItemModal(img: "assets/images/12.png", value: "ماء", name: "ماء"),
      ItemModal(img: "assets/images/13.png", value: "كتاب", name: "كتاب"),
      ItemModal(img: "assets/images/14.png", value: "ديك", name: "ديك"),
      ItemModal(img: "assets/images/15.png", value: "قرد", name: "قرد"),
      ItemModal(img: "assets/images/16.png", value: "بوق", name: "بوق"),
      ItemModal(img: "assets/images/20.png", value: "سلة", name: "سلة"),
      ItemModal(img: "assets/images/19.png", value: "فانوس", name: "فانوس"),
      ItemModal(img: "assets/images/18.png", value: "شمس", name: "شمس"),
      ItemModal(img: "assets/images/17.png", value: "مشمش", name: "مشمش"),
      ItemModal(img: "assets/images/21.png", value: "غزال", name: "غزال"),
      ItemModal(img: "assets/images/22.png", value: "اصباغ", name: "اصباغ"),
      ItemModal(img: "assets/images/23.png", value: "علم", name: "علم"),
      ItemModal(img: "assets/images/24.png", value: "زرع", name: "زرع"),
      ItemModal(img: "assets/images/25.png", value: "افراخ", name: "افراخ"),
      ItemModal(img: "assets/images/26.png", value: "دجاج", name: "دجاج"),
      ItemModal(img: "assets/images/28.png", value: "تفاح", name: "تفاح"),
      ItemModal(img: "assets/images/27.png", value: "خوخ", name: "خوخ"),
      ItemModal(img: "assets/images/29.png", value: "باب", name: "باب"),
      ItemModal(img: "assets/images/30.png", value: "قفص", name: "قفص"),
      ItemModal(img: "assets/images/31.png", value: "بيض", name: "بيض"),
      ItemModal(img: "assets/images/32.png", value: "محراث", name: "محراث"),
      ItemModal(img: "assets/images/33.png", value: "بنت", name: "بنت"),
      ItemModal(img: "assets/images/34.png", value: "خروف", name: "خروف"),
      ItemModal(img: "assets/images/35.png", value: "ابريق", name: "ابريق"),
      ItemModal(img: "assets/images/36.png", value: "عنب", name: "عنب"),
      ItemModal(img: "assets/images/37.png", value: "فواكه", name: "فواكه"),
      ItemModal(img: "assets/images/38.png", value: "هلال", name: "هلال"),
      ItemModal(img: "assets/images/39.png", value: "نام", name: "نام"),
      ItemModal(img: "assets/images/40.png", value: "ميزان", name: "ميزان"),
    ];
    items2 = List<ItemModal>.from(items);
  }

  @override
  void initState() {
    initController();
    initData();
    player=AudioPlayer();
    super.initState();
  }
  @override
  void dispose() {
    player.dispose();
    controllerTopCenter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if(isPuzzeled1&&isPuzzeled2&&isPuzzeled3&&isPuzzeled4){
      WidgetsBinding.instance.addPostFrameCallback((_){
        Navigator.pop(context);
      });
    }
    return Scaffold(
      backgroundColor: Color(0xff74cef3),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff74cef3),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                SizedBox(
                  width: 250,
                  height: 15,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: LinearProgressIndicator(
                      backgroundColor: Colors.deepOrange.shade50,
                      valueColor:const AlwaysStoppedAnimation<Color>(Colors.deepOrange),
                      value: score,
                    ),
                  ),
                ),
              const  SizedBox(
                  width: 10,
                ),
               const Text(": المستوى",
                  style: TextStyle(color: Colors.deepOrange,
                    fontFamily: "Cairo",
                    fontSize: 18,),),
              ],
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .3,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: isPuzzeled3
                              ? Stack(
                            children: [
                              Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                  ),
                                  child: Image.asset(
                                    items[puzzels3].img,
                                    color: Colors.grey,
                                  )),
                              const  Positioned(
                                left: 0.0,
                                top: 0.0,
                                child:  Icon(Icons.check_circle_rounded,
                                  size: 30,color: Colors.green,),
                              ),
                            ],
                          )
                              : Container(
                            child: Draggable<ItemModal>(
                              data: items[puzzels3],
                              childWhenDragging: Image.asset(
                                items[puzzels3].img,
                                height: 120,
                              ),
                              feedback: Image.asset(
                                items[puzzels3].img,
                                height: 80,
                              ),
                              child: Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(),
                                  child: Image.asset(
                                    items[puzzels3].img,
                                  )),
                            ),
                          ),
                        ),
                        Expanded(
                          child: isPuzzeled2
                              ? Stack(
                            children: [
                              Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                  ),
                                  child: Image.asset(
                                    items[puzzel2].img,
                                    color: Colors.grey,
                                  )),
                              const  Positioned(
                                left: 0.0,
                                top: 0.0,
                                child:  Icon(Icons.check_circle_rounded,
                                  size: 30,color: Colors.green,),
                              ),
                            ],
                          )
                              :Container(
                            child: Draggable<ItemModal>(
                              data: items[puzzel2],
                              childWhenDragging: Image.asset(
                                items[puzzel2].img,
                                height: 120,
                              ),
                              feedback: Image.asset(
                                items[puzzel2].img,
                                height: 80,
                              ),
                              child: Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(),
                                  child: Image.asset(
                                    items[puzzel2].img,
                                  )),
                            ),
                          ),
                        ),
                        Expanded(
                          child: isPuzzeled1
                              ? Stack(
                            children: [
                              Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                  ),
                                  child: Image.asset(
                                    items[puzzel1].img,
                                    color: Colors.grey,
                                  )),
                            const  Positioned(
                                left: 0.0,
                                top: 0.0,
                                child:  Icon(Icons.check_circle_rounded,
                                  size: 30,color: Colors.green,),
                              ),
                            ],
                          )
                              : Container(
                            child: Draggable<ItemModal>(
                              data: items[puzzel1],
                              childWhenDragging: Image.asset(
                                items[puzzel1].img,
                                height: 120,
                              ),
                              feedback: Image.asset(
                                items[puzzel1].img,
                                height: 80,
                              ),
                              child: Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(),
                                  child: Image.asset(
                                    items[puzzel1].img,
                                  )),
                            ),
                          ),
                        ),

                        Expanded(
                          child: isPuzzeled4
                              ? Stack(
                            children: [
                              Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                  ),
                                  child: Image.asset(
                                    items[puzzel4].img,
                                    color: Colors.grey,
                                  )),
                              const  Positioned(
                                left: 0.0,
                                top: 0.0,
                                child:  Icon(Icons.check_circle_rounded,
                                  size: 30,color: Colors.green,),
                              ),
                            ],
                          )
                              : Container(
                            child: Draggable<ItemModal>(
                              data: items[puzzel4],
                              childWhenDragging: Image.asset(
                                items[puzzel4].img,
                                height: 120,
                              ),
                              feedback: Image.asset(
                                items[puzzel4].img,
                                height: 80,
                              ),
                              child: Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(),
                                  child: Image.asset(
                                    items[puzzel4].img,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .3,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: isPuzzeled1
                              ? Opacity(
                                  opacity: .5,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(20)),
                                        color: Colors.green),
                                    child: const Center(
                                        child: Icon(
                                      Icons.check_circle_rounded,
                                      size: 50,
                                      color: Colors.white,
                                    )),
                                  ),
                                )
                              : Container(
                                  child: DragTarget<ItemModal>(
                                  onAccept: (item) async{
                                    if (items2[puzzel1].value == item.value) {
                                      await playGood();
                                      if (items.length > 4) {
                                        setState(() {
                                          score+=0.02439024390244;
                                          items.remove(item);
                                          items2.remove(items2[puzzel1]);
                                        });
                                      } else {
                                        setState(() {
                                          score+=0.02439024390244;
                                          isPuzzeled1 = true;
                                        });
                                      }
                                      items2[puzzel1].isAccept = false;
                                    } else {
                                      playWrong();
                                      setState(() {
                                        items2[puzzel1].isAccept = false;
                                      });
                                    }
                                  },
                                  onWillAccept: (item) {
                                    setState(() {
                                      items2[puzzel1].isAccept = true;
                                    });
                                    return true;
                                  },
                                  onLeave: (item) {
                                    items2[puzzel1].isAccept = false;
                                  },
                                  builder: (context, acceptedItem, rejectedItem) {
                                    return Container(
                                      decoration: BoxDecoration(
                                       shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 2,
                                            color: Colors.deepOrange.shade200),
                                        color: items2[puzzel1].isAccept
                                            ? Colors.blueGrey
                                            : Colors.white,
                                      ),
                                      child: Center(
                                        child: Text(
                                          items2[puzzel1].name,
                                          style:  TextStyle(
                                            fontFamily: "Cairo",
                                            fontSize: 30,
                                            color:items2[puzzel1].isAccept?Colors.white: Colors.deepOrange,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                )),
                        ),

                        Expanded(
                          child: isPuzzeled4
                              ? Opacity(
                            opacity: .5,
                            child: Container(
                              decoration: const BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                                  color: Colors.green),
                              child: const Center(
                                  child: Icon(
                                    Icons.check_circle_rounded,
                                    size: 50,
                                    color: Colors.white,
                                  )),
                            ),
                          )
                              : Container(
                              child: DragTarget<ItemModal>(
                                onAccept: (item)async {
                                  if (items2[puzzel4].value == item.value) {
                                    await playGood();
                                    if (items.length > 4) {
                                      setState(() {
                                        score+=0.02439024390244;
                                        items.remove(item);
                                        items2.remove(items2[puzzel4]);
                                      });
                                    } else {
                                      setState(() {
                                        score+=0.02439024390244;
                                        isPuzzeled4 = true;
                                      });
                                    }
                                    items2[puzzel4].isAccept = false;
                                  } else {
                                    playWrong();
                                    setState(() {
                                      items2[puzzel4].isAccept = false;
                                    });
                                  }
                                },
                                onWillAccept: (item) {
                                  setState(() {
                                    items2[puzzel4].isAccept = true;
                                  });
                                  return true;
                                },
                                onLeave: (item) {
                                  items2[puzzel4].isAccept = false;
                                },
                                builder: (context, acceptedItem, rejectedItem) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          width: 2,
                                          color: Colors.deepOrange.shade200),
                                      color: items2[puzzel4].isAccept
                                          ? Colors.blueGrey
                                          : Colors.white,
                                    ),
                                    child: Center(
                                      child: Text(
                                        items2[puzzel4].name,
                                        style:  TextStyle(
                                          fontFamily: "Cairo",
                                          fontSize: 30,
                                          color:items2[puzzel4].isAccept? Colors.white:Colors.deepOrange,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              )),
                        ),
                        Expanded(
                          child: isPuzzeled3
                              ? Opacity(
                                  opacity: .5,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(20)),
                                        color: Colors.green),
                                    child: const Center(
                                        child: Icon(
                                      Icons.check_circle_rounded,
                                      size: 50,
                                      color: Colors.white,
                                    )),
                                  ),
                                )
                              : Container(
                                  child: DragTarget<ItemModal>(
                                  onAccept: (item) async{
                                    if (items2[puzzels3].value == item.value) {
                                      await playGood();
                                      if (items.length > 4) {
                                        setState(() {
                                          score+=0.02439024390244;
                                          items.remove(item);
                                          items2.remove(items2[puzzels3]);
                                        });
                                      } else {
                                        setState(() {
                                          score+=0.02439024390244;
                                          isPuzzeled3 = true;
                                        });
                                      }
                                      items2[puzzels3].isAccept = false;
                                    } else {
                                      playWrong();
                                      setState(() {
                                        items2[puzzels3].isAccept = false;
                                      });
                                    }
                                  },
                                  onWillAccept: (item) {
                                    setState(() {
                                      items2[puzzels3].isAccept = true;
                                    });
                                    return true;
                                  },
                                  onLeave: (item) {
                                    items2[puzzels3].isAccept = false;
                                  },
                                  builder: (context, acceptedItem, rejectedItem) {
                                    return Container(
                                      decoration: BoxDecoration(
                                       shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 2,
                                            color: Colors.deepOrange.shade200),
                                        color: items2[puzzels3].isAccept
                                            ? Colors.blueGrey
                                            : Colors.white,
                                      ),
                                      child: Center(
                                        child: Text(
                                          items2[puzzels3].name,
                                          style:  TextStyle(
                                            fontFamily: "Cairo",
                                            fontSize: 30,
                                            color:items2[puzzels3].isAccept? Colors.white:Colors.deepOrange,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                )),
                        ),
                        Expanded(
                          child: isPuzzeled2
                              ? Opacity(
                            opacity: .5,
                            child: Container(
                              decoration: const BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                                  color: Colors.green),
                              child: const Center(
                                  child: Icon(
                                    Icons.check_circle_rounded,
                                    size: 50,
                                    color: Colors.white,
                                  )),
                            ),
                          )
                              : Container(
                              child: DragTarget<ItemModal>(
                                onAccept: (item) async{
                                  if (items2[puzzel2].value == item.value) {
                                    await playGood();
                                    if (items.length > 4) {
                                      score+=0.02439024390244;
                                      setState(() {
                                        items.remove(item);
                                        items2.remove(items2[puzzel2]);
                                      });
                                    } else {
                                      setState(() {
                                        score+=0.02439024390244;
                                        isPuzzeled2 = true;
                                      });
                                    }
                                    items2[puzzel2].isAccept = false;
                                  } else {
                                    playWrong();
                                    setState(() {
                                      items2[puzzel2].isAccept = false;
                                    });
                                  }
                                },
                                onWillAccept: (item) {
                                  setState(() {
                                    items2[puzzel2].isAccept = true;
                                  });
                                  return true;
                                },
                                onLeave: (item) {
                                  items2[puzzel2].isAccept = false;
                                },
                                builder: (context, acceptedItem, rejectedItem) {
                                  return Container(
                                    decoration: BoxDecoration(
                                     shape: BoxShape.circle,
                                      border: Border.all(
                                          width: 2,
                                          color: Colors.deepOrange.shade200),
                                      color: items2[puzzel2].isAccept
                                          ? Colors.blueGrey
                                          : Colors.white,
                                    ),
                                    child: Center(
                                      child: Text(
                                        items2[puzzel2].name,
                                        style:  TextStyle(
                                          fontFamily: "Cairo",
                                          fontSize: 30,
                                          color:items2[puzzel2].isAccept? Colors.white:Colors.deepOrange,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              )),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
