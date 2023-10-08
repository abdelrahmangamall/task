import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tune_app/Features/home/Presentation/views/widgets/customTopLikes.dart';
import 'package:tune_app/core/constant.dart';
import 'package:tune_app/core/customAppBar.dart';
import 'package:tune_app/core/styles.dart';
import '../../../../../generated/l10n.dart';

class HomeViewBody extends StatefulWidget{
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {




  AudioPlayer audioPlayer = AudioPlayer();
 // AudioCache audioCache = AudioCache();

  PlayerState audioPlayerState = PlayerState.stopped;
  String audioUrl =
      'https://download.quranicaudio.com/qdc/abdul_baset/mujawwad/1.mp3';
  bool isAudioLoaded = false;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
   // audioCache = AudioCache(prefix:to audioPlayer);
    AudioCache().load(audioUrl).then((value) {
      setState(() {
        isAudioLoaded = true;
      });
    });
  }
  void _playAudio() async {
    if (audioPlayerState == PlayerState.stopped) {
      await audioPlayer.play(UrlSource(audioUrl));
      setState(() {
        audioPlayerState = PlayerState.playing;
      });
    } else {
      await audioPlayer.stop();
      setState(() {
        audioPlayerState = PlayerState.stopped;
      });
    }
  }
  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
     padding: EdgeInsets.only(top: MediaQuery.of(context).size.height *.1,left:7 ,right: 7),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             customAppBar(S.of(context).appBar1),
             Text(S.of(context).title1,
               style: Styles.textStyle24,),
             const  Divider(),
             customTopLikes.name(S.of(context).txt1),
             customTopLikes.name(S.of(context).txt2),
             customTopLikes.name(S.of(context).txt3),
             const SizedBox(height: 20,),
               Text(S.of(context).title2,style: Styles.textStyle24,),
             const  Divider(),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                     //  if (isAudioLoaded)
                        // const CircularProgressIndicator(),
                       IconButton(
                            icon: Icon(
                            audioPlayerState == PlayerState.playing ?
                            iconPause
                                         : iconPlay,),
                                            onPressed:  _playAudio ,),
                              const SizedBox(width: 20,),
                       Text(S.of(context).txt4,style: Styles.textStyleNormal,),
                     ],),
             const SizedBox(height: 50,)
           ]
         ),
   );
  }
 }