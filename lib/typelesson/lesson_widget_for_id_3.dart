import 'package:flutter/material.dart';
class Lesson3 extends StatefulWidget {
  final String image1;

  final String text1;

  final String name;

  Lesson3({
    @required this.image1,
    @required this.text1,
    @required this.name,
  });
  @override
  _Lesson3State createState() => _Lesson3State();
}

class _Lesson3State extends State<Lesson3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                //--------- container name lesson -------------
                Container(
                  margin:EdgeInsets.all(5.8),
                  height: 70,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius:const BorderRadius.all(Radius.circular(20)),
                    color: Colors.amber,
                  ),

                  child: Center(
                    child: Text(widget.name,
                      style:const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                  ),
                ),
                SizedBox(height: 10,),
                //--------- container image 1 -------------
                Row(
                  children: [
                    Container(
                      width: 250,
                      height: 500,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: ExactAssetImage(widget.image1),
                            fit: BoxFit.cover),
                      ),

                    ),
                    SizedBox(width: 10,),
                    //--------- Text 1 -------------
                    Container(
                      width: 150,
                      height: 500,
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Center(
                          child: Text(widget.text1,
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,

                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
