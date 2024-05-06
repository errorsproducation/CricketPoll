

import 'dart:async';

import 'package:better_player/better_player.dart';
import 'package:cricketpoll/Providerdata/ProviderForYouTubeUrl.dart';
import 'package:cricketpoll/Screen/TryScreen.dart';
import 'package:cricketpoll/Tabbar/TabBarForVideoPlayer.dart';
import 'package:floating/floating.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ffmpeg/flutter_ffmpeg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_provider/path_provider.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../FutureProvider/FutureProvider.dart';


class Video_Player_Page extends StatefulWidget {
  String url=" ";
  Video_Player_Page(this.url);

  @override
  State<Video_Player_Page> createState() => _Video_Player_PageState(url);
}

class _Video_Player_PageState extends State<Video_Player_Page> {
  String url=" ";

  _Video_Player_PageState(this.url);

  late VlcPlayerController _videoPlayerController;
  late Floating floating;
  double value =0.0;
  double max=0.0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    //_controller.loadVideoById(videoId: "ht72EAmIITA");
    floating=Floating();

  }
  /*void getdurations(){
    _timer = Timer.periodic(Duration(seconds: 5), (timer) async {
      setState(() {
        max=_videoPlayerController.value.duration.inSeconds.toDouble();
        print("max $max");

        value=_videoPlayerController.value.position.inSeconds.toDouble();
        print("value $value");
      });
    });

  }
  */



  @override
  void dispose() async {
    super.dispose();

  }


  @override
  Widget build(BuildContext context) {


    return PiPSwitcher(
      childWhenEnabled: Scaffold(
        body: BetterPlayer.network(
          "$url",
          betterPlayerConfiguration: BetterPlayerConfiguration(
            aspectRatio: 16 / 9,
            autoPlay: true,
            looping: false,
            autoDispose: true,
            controlsConfiguration: BetterPlayerControlsConfiguration(
              enablePip: true,
              iconsColor: Colors.white,
            ),
          ),
        ),
      ),

      childWhenDisabled: Scaffold(
        body: Stack(
          children: [
            BetterPlayer.network(
              "$url",
              betterPlayerConfiguration: BetterPlayerConfiguration(
                aspectRatio: 16 / 9,
                autoPlay: true,
                looping: false,
                autoDispose: true,
                controlsConfiguration: BetterPlayerControlsConfiguration(

                  iconsColor: Colors.white,
                  enablePip: true,
                ),
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: IconButton(onPressed: () {
                setState(() {
                  floating.enable();
                });
              }, icon: Icon(Icons.picture_in_picture)),
            )
          ],
        ),
      ),
    );
  }


}
