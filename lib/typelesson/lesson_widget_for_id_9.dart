import 'package:flutter/material.dart';
class Lesson9 extends StatefulWidget {
  final String image1;
  final String image2;
  final String text1;
  final String name;

  Lesson9({
    @required this.image1,
    @required this.image2,
    @required this.text1,
    @required this.name,
  });
  @override
  _Lesson9State createState() => _Lesson9State();
}

class _Lesson9State extends State<Lesson9> {
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
                Container(
                  width: 400,
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage(widget.image1),
                        fit: BoxFit.cover),
                  ),

                ),
                //--------- Text 1 -------------
                Padding(
                  padding: const EdgeInsets.all(40.0),
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
                //--------- container image 2 -------------
                Container(
                  width: 400,
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage(widget.image2),
                        fit: BoxFit.cover),
                  ),

                ),



              ],
            ),
          ],
        ),
      ),
    );
  }
}
