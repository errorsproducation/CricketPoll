

import 'dart:async';

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
    _videoPlayerController= VlcPlayerController.network(
      '$url',
      autoPlay: false,

      options: VlcPlayerOptions(
        advanced: VlcAdvancedOptions([
          VlcAdvancedOptions.networkCaching(2000),
        ]),
      ),
    );
    getdurations();
  }
  void getdurations(){
    _timer = Timer.periodic(Duration(seconds: 5), (timer) async {
      setState(() {
        max=_videoPlayerController.value.duration.inSeconds.toDouble();
        print("max $max");

        value=_videoPlayerController.value.position.inSeconds.toDouble();
        print("value $value");
      });
    });

  }



  @override
  void dispose() async {
    super.dispose();
    await _videoPlayerController.stopRendererScanning();
    await _videoPlayerController.dispose();
  }


  @override
  Widget build(BuildContext context) {


    return OrientationBuilder(
      builder: (context, orientation) {
        return orientation==Orientation.landscape?Expanded(child: VlcPlayer(
          controller: _videoPlayerController, // Controler that we created earlier
          aspectRatio: 16 / 9,
          // Aspect ratio you want to take in screen
        ),):PiPSwitcher(
          childWhenEnabled:VlcPlayer(
            controller: _videoPlayerController, // Controler that we created earlier
            aspectRatio: 16 / 9,
            // Aspect ratio you want to take in screen
          ),
          childWhenDisabled: SafeArea(
            child: Scaffold(
              body: Container(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 142.h,
                      color: Color(0xff10081C),
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              InkWell(
                                onTap:()  async {
                                  await floating.enable(aspectRatio: Rational.landscape());
                                },
                                child: Container(
                                  width: 32.w,
                                  height: 32.h,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/leftarrow.png"),
                                    ),
                                  ),
                                ),
                              ),

                              Align(
                                alignment: Alignment.center,
                                child: Text("IND vs PAK",
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),


                            ],
                          ),

                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {

                            },
                            child: Container(
                              width: 192.w,
                              height: 38.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(21),
                                color: Colors.white.withOpacity(0.2),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 95.w,
                                    height: 38.h,
                                    child: Center(
                                      child: Text("Watch",
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(21),
                                      gradient: LinearGradient(
                                        colors: [Color(0xffFF7020),Color(0xffF63936),Color(0xffED044A)],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Stack(
                                    children: [
                                      Align(
                                        alignment:Alignment.center,
                                        child: Text("Scores",
                                          style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white.withOpacity(0.6),
                                            fontSize: 14.sp,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  ),

                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),

                    VlcPlayer(
                      controller: _videoPlayerController, // Controler that we created earlier
                      aspectRatio: 16 / 9,
                      // Aspect ratio you want to take in screen
                    ),

                    Container(
                      height: 30,
                      color: Colors.black,
                      child: SliderTheme(
                        data: SliderThemeData(
                            thumbColor: Colors.orange,
                            //thumbShape: SliderComponentShape.noThumb,
                            overlayShape: SliderComponentShape.noOverlay),
                        child: Slider(

                            value: value,
                            max: max,
                            activeColor: Colors.white,
                            inactiveColor: const Color(0x4fffffff),
                            label: '${value}',
                            onChanged: (double newValue) {
                              setState(() {
                                value=newValue;
                                print("minduration :$value");
                                print("newvalue : $newValue");
                                print("newvalue : ${newValue.toInt()}");

                              });
                            },
                            semanticFormatterCallback: (double newValue) {
                              return '${newValue.round()}';
                            }),
                      ),
                    ),

                    Container(
                      width: double.infinity,
                      height: 100,
                      color: Colors.black,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(onPressed: () async {
                            _videoPlayerController.pause();
                          }, icon: Icon(Icons.pause,
                            color: Colors.white,
                          ),
                          ),
                          IconButton(onPressed: () async {
                            _videoPlayerController.play();
                          }, icon: Icon(Icons.play_arrow_rounded,
                            color: Colors.white,
                          ),
                          ),
                          IconButton(onPressed: () async {
                            Duration d=await _videoPlayerController.getPosition();
                            int i=d.inSeconds.toInt()-10;
                            _videoPlayerController.seekTo(Duration(seconds: i,));
                          }, icon: Icon(Icons.fast_rewind_rounded,
                            color: Colors.white,
                          ),
                          ),
                          IconButton(onPressed: () async {
                            Duration d=await _videoPlayerController.getPosition();
                            int i=d.inSeconds.toInt()+10;
                            _videoPlayerController.seekTo(Duration(seconds: i,));
                          }, icon: Icon(Icons.fast_forward_rounded,
                            color: Colors.white,),
                          ),

                          IconButton(onPressed: () async {
                            _videoPlayerController.setVolume(0);
                          }, icon: Icon(Icons.volume_off,
                            color: Colors.white,
                          ),
                          ),
                          IconButton(onPressed: () async {
                            _videoPlayerController.setVolume(100);
                          }, icon: Icon(Icons.volume_up,
                            color: Colors.white,),
                          ),

                          IconButton(onPressed: () async {
                            SystemChrome.setPreferredOrientations([
                              DeviceOrientation.landscapeLeft,
                              DeviceOrientation.landscapeRight,
                            ]);
                          }, icon: Icon(Icons.fullscreen,
                            color: Colors.white,),
                          ),

                        ],
                      ),
                    ),



                    Container(
                      width: double.infinity,
                      height: 100,
                      color: Colors.black,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap:(){
                              _videoPlayerController.setPlaybackSpeed(0.5);

                            },
                            child: Container(
                              width: 30,
                              height: 30,
                              color: Colors.white,
                              child: Center(
                                child: Text("0.5"),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              _videoPlayerController.setPlaybackSpeed(1.75);
                            },

                            child: Container(
                              width: 30,
                              height: 30,
                              color: Colors.white,
                              child: Center(
                                child: Text("1.75",
                                ),
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),






                    //Expanded(child: TabBarforVideoPlayer()),


                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }


}
