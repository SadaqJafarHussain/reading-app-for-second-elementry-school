import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:second_elementry_school/notifiers/play_button_notifier.dart';
import 'package:second_elementry_school/notifiers/progress_notifier.dart';
import 'package:second_elementry_school/notifiers/repeat_button_notifier.dart';
import 'package:second_elementry_school/widgets/play_audio.dart';
import '../page_manager.dart';

class CurrentSongTitle extends StatelessWidget {
  final PageManager pageManager;
  const CurrentSongTitle({Key key,@required this.pageManager}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String>(
      valueListenable: pageManager.currentSongTitleNotifier,
      builder: (_, title, __) {
        return Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(title, style: TextStyle(fontSize: 40)),
        );
      },
    );
  }
}

class AudioProgressBar extends StatelessWidget {
  final PageManager pageManager;
  const AudioProgressBar({Key key,@required this.pageManager}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ProgressBarState>(
      valueListenable: pageManager.progressNotifier,
      builder: (_, value, __) {
        return ProgressBar(
          thumbColor: Color(0xffc2d218),
          barHeight: 8,
          progressBarColor: Color(0xffc2d218),
          baseBarColor: Colors.purple.shade300,
          progress: value.current,
          buffered: value.buffered,
          total: value.total,
          onSeek: pageManager.seek,
        );
      },
    );
  }
}


class AudioControlButtons extends StatelessWidget {
  final PageManager pageManager;
  final Function ontap;
  final Function stopPlay;
  const AudioControlButtons({Key key,@required this.pageManager,this.ontap,this.stopPlay,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purple.shade300,
                Colors.purple.shade400,
                Colors.purple.shade500,
                Colors.purple.shade600]
          )
      ),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          PreviousSongButton(
            pageManager: pageManager,
          ),
          PlayButton(
            ontap:(isPlay)=> ontap(isPlay),
            pageManager: pageManager,
            stopPlay: stopPlay,
          ),
          NextSongButton(
            pageManager: pageManager,
          ),
        ],
      ),
    );
  }
}

class RepeatButton extends StatelessWidget {
  final PageManager pageManager;
  const RepeatButton({Key key,@required this.pageManager}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<RepeatState>(
      valueListenable:pageManager.repeatButtonNotifier,
      builder: (context, value, child) {
        Icon icon;
        switch (value) {
          case RepeatState.off:
            icon = Icon(Icons.repeat, color: Colors.grey);
            break;
          case RepeatState.repeatSong:
            icon = Icon(Icons.repeat_one);
            break;
          case RepeatState.repeatPlaylist:
            icon = Icon(Icons.repeat);
            break;
        }
        return IconButton(
          icon: icon,
          onPressed: pageManager.onRepeatButtonPressed,
        );
      },
    );
  }
}

class PreviousSongButton extends StatelessWidget {
  final PageManager pageManager;
  const PreviousSongButton({Key key,@required this.pageManager,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable:pageManager.isFirstSongNotifier,
      builder: (_, isFirst, __) {
        return Center(
          child: IconButton(
              icon: Icon(Icons.skip_previous,size: 40,),
              onPressed:
              (isFirst) ? null :(){
                pageManager.onPreviousSongButtonPressed();
              }
          ),
        );
      },
    );
  }
}

class PlayButton extends StatelessWidget {
  final PageManager pageManager;
  final Function ontap;
  final Function stopPlay;
  const PlayButton({Key key,@required this.pageManager,this.ontap,this.stopPlay}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ButtonState>(
      valueListenable: pageManager.playButtonNotifier,
      builder: (_, value, __) {
        switch (value) {
          case ButtonState.loading:
            return Container(
              margin: EdgeInsets.all(8.0),
              width: 32.0,
              height: 32.0,
              child: CircularProgressIndicator(),
            );
          case ButtonState.paused:
            return InkWell(
              child: Center(
                child: Icon(Icons.play_circle_outline,size: 50,
                  color: Color(0xffc2d218)),
              ),
              onTap:(){
                ontap(true);
                pageManager.play();
              },
            );
          case ButtonState.playing:
            return InkWell(
              child: Center(
                child: Icon(Icons.pause_circle_outline,size: 50,
                  color: Color(0xffc2d218)),
              ),
              onTap:(){
                ontap(false);
                pageManager.stop();},
            );
        }
      },
    );
  }
}

class NextSongButton extends StatelessWidget {
  final PageManager pageManager;
  const NextSongButton({Key key,@required this.pageManager}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable:pageManager.isLastSongNotifier,
      builder: (_, isLast, __) {
        return IconButton(
          icon:const Icon(Icons.skip_next,size: 40,),
          onPressed: (isLast) ? null : pageManager.onNextSongButtonPressed,
        );
      },
    );
  }
}

class ShuffleButton extends StatelessWidget {
  final PageManager pageManager;
  const ShuffleButton({Key key,@required this.pageManager}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: pageManager.isShuffleModeEnabledNotifier,
      builder: (context, isEnabled, child) {
        return IconButton(
          icon: (isEnabled)
              ? Icon(Icons.shuffle)
              : Icon(Icons.shuffle, color: Colors.grey),
          onPressed:pageManager.onShuffleButtonPressed,
        );
      },
    );
  }
}
