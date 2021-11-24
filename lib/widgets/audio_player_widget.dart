import 'package:flutter/material.dart';
import 'package:second_elementry_school/widgets/play_audio.dart';

class AudioPlayerWidget extends StatefulWidget {
  final String normalVoice;
  final String slowVoice;
  final String name;
  const AudioPlayerWidget({Key key,@required this.normalVoice,@required this.name
    ,@required this.slowVoice}) : super(key: key);

  @override
  _AudioPlayerWidgetState createState() => _AudioPlayerWidgetState();
}

class _AudioPlayerWidgetState extends State<AudioPlayerWidget> {
  bool slow=false;
  bool normal=true;
  bool isPlaying=false;


  @override
  void dispose() {
    disposePlayer();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink.shade50,
      child: ListTile(

        leading:  IconButton(
          onPressed: (){
            setState(() {
              isPlaying=!isPlaying;
            });
            normal?
            isPlaying==false?playWord(widget.normalVoice,false):
            playWord(widget.normalVoice,true):
            isPlaying==false?playWord(widget.slowVoice,false):
            playWord(widget.slowVoice,true);
          },
          icon: Icon(isPlaying?Icons.pause:Icons.play_arrow,color: Colors.blue,
          size: 40,),
        ),
        title: Text(widget.name,
          style:const TextStyle(
            fontFamily: "Cairo",
          fontSize: 20,color:Colors.black,
        ),),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: SizedBox(
                width: 120,
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      normal=true;
                      slow=false;
                    });
                  },
                  child: Row(mainAxisAlignment: MainAxisAlignment.end,
                    children:  [
                       Text("قراءة طبيعية",style:TextStyle(
                        fontSize: 18,color:normal? Colors.blue:Colors.black,
                      ),),
                       Expanded(
                         child: Builder(
                           builder: (context) {
                             return Icon(normal?Icons.radio_button_checked:Icons.radio_button_unchecked,
                      color:normal? Colors.blue:Colors.black,);
                           }
                         ),
                       )
                    ],
                  ),
                ),
              ),
            ),
             Expanded(
               child: SizedBox(
                width: 120,
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      normal=false;
                      slow=true;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:  [
                      Text("قراءة بطيئه",style:TextStyle(
                        fontSize: 18,color:slow?  Colors.blue: Colors.black,
                      ),),
                      Expanded(
                        child: Icon(slow?Icons.radio_button_checked:Icons.radio_button_unchecked,
                          color:slow? Colors.blue:Colors.black,),
                      )
                    ],
                  ),
                ),
            ),
             )
          ],
        ),
      ),
    );
  }
}
