import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:second_elementry_school/pages/lessons.dart';
import 'package:second_elementry_school/pages/problems.dart';
import 'package:second_elementry_school/pages/tests.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((value) => {
  runApp(
  const MyApp(),
  )
  });
}
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
          scrollbarTheme: ScrollbarThemeData(
            trackBorderColor:  MaterialStateProperty.all(Colors.purple),
              isAlwaysShown: true,
              mainAxisMargin: 10,
              interactive: true,
              showTrackOnHover: true,
              crossAxisMargin: 6,
              thickness: MaterialStateProperty.all(6),
              thumbColor: MaterialStateProperty.all(Colors.purple),
              radius:const Radius.circular(30),
              minThumbLength: 50)
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key key,}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff74cef3),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
             Image.asset("assets/images/qir.png",
             height: 200,
             width: 300,
             alignment: Alignment.center,
             ),
            const Padding(
               padding: EdgeInsets.only(right: 50.0),
               child: Align(
                 alignment: Alignment.centerRight,
                 child: Text("للصف الثاني الإبتدائي",
                  style: TextStyle(
                    color: Colors.white,
                    shadows: [
                      BoxShadow(
                        color: Colors.black38,
                        offset: Offset(2,2),
                        blurRadius: 4,
                        spreadRadius: 5
                      )
                    ],
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),),
               ),
             ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          height: 50,
                          width: 180,
                          child: RaisedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (ctx)=>const LessonsPage()));
                          },
                            color: Colors.purple.shade300,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                               const Text("لوحة الدروس",
                                    style: TextStyle(
                                      color: Colors.white,
                                      shadows: [
                                        BoxShadow(
                                            color: Colors.black38,
                                            offset: Offset(2,2),
                                            blurRadius: 4,
                                            spreadRadius: 5
                                        )
                                      ],
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900,
                                    )),
                               const SizedBox(
                                  width: 20,
                                ),
                                Expanded( 
                                  child: Image.asset("assets/images/book.png",
                                  height: 30,
                                  width: 30,),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 180,
                          child: RaisedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (ctx)=>const Problems()));
                          },
                            color: Colors.pink.shade200,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("تمارين الكتاب",
                                    style: TextStyle(
                                      color: Colors.white,
                                      shadows: [
                                        BoxShadow(
                                            color: Colors.black38,
                                            offset: Offset(2,2),
                                            blurRadius: 4,
                                            spreadRadius: 5
                                        )
                                      ],
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900,
                                    )),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded( 
                                  child: Image.asset("assets/images/s.png",
                                    height: 30,
                                    width: 30,),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 180,
                          child: RaisedButton(onPressed: ()async{
                            SystemChrome.setPreferredOrientations(
                                [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft]);
                           await Navigator.push(context, MaterialPageRoute(builder: (ctx)=>TestsPage()));
                            SystemChrome.setPreferredOrientations(
                                [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
                          },
                            color: Colors.orange.shade400,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("إختبر نفسك",
                                    style: TextStyle(
                                      color: Colors.white,
                                      shadows: [
                                        BoxShadow(
                                            color: Colors.black38,
                                            offset: Offset(2,2),
                                            blurRadius: 4,
                                            spreadRadius: 5
                                        )
                                      ],
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900,
                                    )),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Image.asset("assets/images/exir.png",
                                    height: 30,
                                    width: 30,),
                                ),
                              ],
                            ),
                          ),
                        ),
                       const Text("! حول التطبيق",
                        style: TextStyle(
                          fontSize: 18,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                          textBaseline: TextBaseline.alphabetic,

                        ),)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Image.asset("assets/images/orange.png",
                  height: 300,
                  width: 120,
                  ),
                ],
              ),
              Expanded(child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset("assets/images/pen.png"))),
            ],
          ),
        ),
      ),
    );
  }
}
