import 'package:basic_utils/basic_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:second_elementry_school/widgets/play_audio.dart';
import '../main.dart';

class WriteWithKeyBoard extends StatefulWidget {
  final List<Map<String, dynamic>> spelling;
  const WriteWithKeyBoard({Key key, this.spelling}) : super(key: key);

  @override
  _WriteWithKeyBoardState createState() => _WriteWithKeyBoardState();
}

class _WriteWithKeyBoardState extends State<WriteWithKeyBoard> {
  int index = 0;
  String word = "";

  @override
  void dispose() {
    super.dispose();
    disposePlayer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 200,
                  width: 400,
                  color: Colors.transparent,
                  child: ClipPath(
                    child: Container(
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amber,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipPath(
                          clipper: _MyClipper2(),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Center(
                                child: Text(
                              word,
                              style: const TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                      ),
                    ),
                    clipper: _MyClipper2(),
                  ),
                ),
              ),
              Container(
                width: 305,
                height: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black),
              ),
              Container(
                height: 450,
                width: 400,
                color: Colors.transparent,
                child: ClipPath(
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipPath(
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.brown,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        word += StringUtils.addCharAtPosition(
                                            "ج", "", word.length);
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.purple,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "ج",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        word += StringUtils.addCharAtPosition(
                                            "ث", "", word.length);
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.deepOrange,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "ث",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        word += StringUtils.addCharAtPosition(
                                            "ت", "", word.length);
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.pink,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "ت",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        word += StringUtils.addCharAtPosition(
                                            "ب", "", word.length);
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.blue,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "ب",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        word += StringUtils.addCharAtPosition(
                                            "ا", "", word.length);
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.blueGrey,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "ا",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        word += StringUtils.addCharAtPosition(
                                            "د", "", word.length);
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.amber,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "د",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        word += StringUtils.addCharAtPosition(
                                            "ح", "", word.length);
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white12,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "ح",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        word += StringUtils.addCharAtPosition(
                                            "خ", "", word.length);
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.teal,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "خ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        word += StringUtils.addCharAtPosition(
                                            "ع", "", word.length);
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.cyan,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "ع",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        word += StringUtils.addCharAtPosition(
                                            "ص", "", word.length);
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.deepPurple,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "ص",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        word += StringUtils.addCharAtPosition(
                                            "غ", "", word.length);
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.deepOrange,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "غ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        word += StringUtils.addCharAtPosition(
                                            "س", "", word.length);
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.purple,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "س",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        word += StringUtils.addCharAtPosition(
                                            "ش", "", word.length);
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.blue,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "ش",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        word += StringUtils.addCharAtPosition(
                                            "و", "", word.length);
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.blueGrey,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "و",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        word += StringUtils.addCharAtPosition(
                                            "ي", "", word.length);
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.pink,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "ي",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        word += StringUtils.addCharAtPosition(
                                            "ء", "", word.length);
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.purple,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "ء",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        word += StringUtils.addCharAtPosition(
                                            "ز", "", word.length);
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "ز",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        word += StringUtils.addCharAtPosition(
                                            "ر", "", word.length);
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.indigo,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "ر",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        word += StringUtils.addCharAtPosition(
                                            "ذ", "", word.length);
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.blueGrey,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "ذ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        word += StringUtils.addCharAtPosition(
                                            "ن", "", word.length);
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black38,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "ن",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        word += StringUtils.addCharAtPosition(
                                            "ط", "", word.length);
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.deepOrange,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "ط",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        word += StringUtils.addCharAtPosition(
                                            "ظ", "", word.length);
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.pink,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "ظ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        word += StringUtils.addCharAtPosition(
                                            "ض", "", word.length);
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.blue,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "ض",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        word += StringUtils.addCharAtPosition(
                                            "ق", "", word.length);
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.purple,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "ق",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        word += StringUtils.addCharAtPosition(
                                            "ف", "", word.length);
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.cyan,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "ف",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      if (word ==
                                          widget.spelling[index]["value"]) {
                                        playGood();
                                      } else {
                                        playWrong();
                                      }
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.green,
                                      ),
                                      child: const Center(
                                          child: Icon(
                                        Icons.check,
                                        size: 40,
                                        color: Colors.white,
                                      )),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        word += StringUtils.addCharAtPosition(
                                            "ه", "", word.length);
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.blue,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "ه",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        word += StringUtils.addCharAtPosition(
                                            "ل", "", word.length);
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.pink,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "ل",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        word += StringUtils.addCharAtPosition(
                                            "ى", "", word.length);
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.amber,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "ى",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (word != "") {
                                          word = word.substring(
                                              0, word.length - 1);
                                        }
                                      });
                                    },
                                    child: const Center(
                                        child: Icon(
                                      Icons.backspace,
                                      size: 40,
                                      color: Colors.white,
                                    )),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        playWord(widget.spelling[index]["path"],
                                            true);
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(5),
                                        height: 50,
                                        width: 50,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                        ),
                                        child: Center(
                                            child: Image.asset(
                                                "assets/images/speaker.png")),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          word += StringUtils.addCharAtPosition(
                                              "ة", "", word.length);
                                        });
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(5),
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.purple,
                                        ),
                                        child: const Center(
                                            child: Text(
                                          "ة",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30),
                                        )),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        showGeneralDialog(
                                          context: context,
                                          barrierDismissible: true,
                                          barrierLabel: 'Label',
                                          //Dismiss alert dialog when set true
                                          pageBuilder: (context, ___, __) {
                                            //Clips its child in a oval shape
                                            return AlertDialog(
                                              alignment: Alignment.bottomCenter,
                                              content: Container(
                                                color: Colors.white,
                                                height: 100,
                                                width: double.infinity,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Expanded(
                                                      child: InkWell(
                                                        child: const Text(
                                                          " ً ",
                                                          style: TextStyle(
                                                            fontSize: 50,
                                                          ),
                                                        ),
                                                        onTap: () {
                                                          setState(() {
                                                            word += StringUtils
                                                                .addCharAtPosition(
                                                                    "ً",
                                                                    "",
                                                                    word.length);
                                                          });
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: InkWell(
                                                        child: const Text(
                                                          " ٍ ",
                                                          style: TextStyle(
                                                            fontSize: 80,
                                                          ),
                                                        ),
                                                        onTap: () {
                                                          setState(() {
                                                            word += StringUtils
                                                                .addCharAtPosition(
                                                                    "ٍ",
                                                                    "",
                                                                    word.length);
                                                          });
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                      ),
                                                    ),

                                                    Expanded(
                                                      child: InkWell(
                                                        child: const Text(
                                                          " ْ ",
                                                          style: TextStyle(
                                                            fontSize: 50,
                                                          ),
                                                        ),
                                                        onTap: () {
                                                          setState(() {
                                                            word += StringUtils
                                                                .addCharAtPosition(
                                                                    "ْ",
                                                                    "",
                                                                    word.length);
                                                          });
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: InkWell(
                                                        child: const Text(
                                                          " أ ",
                                                          style: TextStyle(
                                                            fontSize: 50,
                                                          ),
                                                        ),
                                                        onTap: () {
                                                          setState(() {
                                                            word += StringUtils
                                                                .addCharAtPosition(
                                                                    "أ",
                                                                    "",
                                                                    word.length);
                                                          });
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: InkWell(
                                                        child: const Text(
                                                          " إ ",
                                                          style: TextStyle(
                                                            fontSize: 50,
                                                          ),
                                                        ),
                                                        onTap: () {
                                                          setState(() {
                                                            word += StringUtils
                                                                .addCharAtPosition(
                                                                    "إ",
                                                                    "",
                                                                    word.length);
                                                          });
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                      ),
                                                    ),
                                                    //Resetting to default stroke value
                                                    Expanded(
                                                      child: InkWell(
                                                        child: const Text(
                                                          " ٌ ",
                                                          style: TextStyle(
                                                            fontSize: 80,
                                                          ),
                                                        ),
                                                        onTap: () {
                                                          setState(() {
                                                            word += StringUtils
                                                                .addCharAtPosition(
                                                                    "ٌ",
                                                                    "",
                                                                    word.length);
                                                          });
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: InkWell(
                                                        child: const Text(
                                                          " ُ ",
                                                          style: TextStyle(
                                                            fontSize: 80,
                                                          ),
                                                        ),
                                                        onTap: () {
                                                          setState(() {
                                                            word += StringUtils
                                                                .addCharAtPosition(
                                                                    "ُ",
                                                                    "",
                                                                    word.length);
                                                          });
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: InkWell(
                                                        child: const Text(
                                                          " ِ ",
                                                          style: TextStyle(
                                                            fontSize: 80,
                                                          ),
                                                        ),
                                                        onTap: () {
                                                          setState(() {
                                                            word += StringUtils
                                                                .addCharAtPosition(
                                                                    "ِ",
                                                                    "",
                                                                    word.length);
                                                          });
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: InkWell(
                                                        child: const Text(
                                                          " َ ",
                                                          style: TextStyle(
                                                            fontSize: 80,
                                                          ),
                                                        ),
                                                        onTap: () {
                                                          setState(() {
                                                            word += StringUtils
                                                                .addCharAtPosition(
                                                                    "َ",
                                                                    "",
                                                                    word.length);
                                                          });
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(5),
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white,
                                        ),
                                        child: const Center(
                                            child: Text(
                                          "َ ُِ ْ",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 40),
                                        )),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          word += StringUtils.addCharAtPosition(
                                              "ئ", "", word.length);
                                        });
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(5),
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.pink,
                                        ),
                                        child: const Center(
                                            child: Text(
                                          "ئ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30),
                                        )),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          word = "";
                                        });
                                      },
                                      child: const Center(
                                          child: Icon(
                                        Icons.delete,
                                        size: 50,
                                        color: Colors.deepOrange,
                                      )),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        clipper: _MyClipper(),
                      ),
                    ),
                  ),
                  clipper: _MyClipper(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RaisedButton(
                      onPressed: index == (widget.spelling.length - 1)
                          ? null
                          : () {
                              setState(() {
                                word = "";
                              });
                              setState(() {
                                word = "";
                              });
                              setState(() {
                                index++;
                              });
                            },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Colors.blue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.arrow_back_ios_sharp,
                            color: Colors.white,
                          ),
                          Text(
                            "التالي",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          )
                        ],
                      ),
                    ),
                    RaisedButton(
                      color: Colors.white,
                      onPressed: () {
                        SystemChrome.setPreferredOrientations(
                            [DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight]);
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const MainPage()));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: const Icon(
                        Icons.home,
                        size: 40,
                      ),
                    ),
                    RaisedButton(
                      onPressed: index == 0
                          ? null
                          : () {
                              setState(() {
                                word = "";
                              });
                              setState(() {
                                index--;
                              });
                            },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Colors.deepOrange,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "السابق",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()..moveTo(size.width * .03, 0);
    path.lineTo(size.width * .97, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class _MyClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width * .97, size.height);
    path.lineTo(size.width * .03, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
