import 'package:just_audio/just_audio.dart';
import '../lists_of_music.dart';

final player=AudioPlayer();

Future playGood() async {
  good.shuffle();
  await player.setAsset(good[0]);
  player.play();
  good.shuffle();
}

Future playWord(String path,bool play) async {
  await player.setAsset(path);
  play?
  player.play()
  :player.pause();
}
disposePlayer(){
  player.dispose();
}

Future playWrong() async {
  wrong.shuffle();
  await player.setAsset(wrong[0]);
  player.play();
  wrong.shuffle();
}