

import 'package:cricketpoll/Tabbar/TabBarForVideoPlayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';


class Video_Player_Page extends StatefulWidget {
  const Video_Player_Page({super.key});

  @override
  State<Video_Player_Page> createState() => _Video_Player_PageState();
}

class _Video_Player_PageState extends State<Video_Player_Page> {

  late VlcPlayerController _videoPlayerController;
  final _controller = YoutubePlayerController();
  String _videoUrl=" ";

  Future<void> initializePlayer() async {}



  @override
  void initState() {
    super.initState();
    _controller.loadVideoById(videoId: "UI1tEhod01E");
    _videoPlayerController = VlcPlayerController.network(
      'https://rr1---sn-h557sns7.googlevideo.com/videoplayback?expire=1714749160&ei=iKo0ZuzuG7icjuMPwZmb6AI&ip=106.197.105.254&id=o-ABCauoShNRlm2MOUfw-MHTFaumDM5_g3BZZZgQmf33sU&itag=18&source=youtube&requiressl=yes&xpc=EgVo2aDSNQ%3D%3D&mh=GN&mm=31%2C29&mn=sn-h557sns7%2Csn-ci5gup-h55z&ms=au%2Crdu&mv=m&mvi=1&pl=20&initcwndbps=421250&bui=AWRWj2SxXURlmHsDOdAp9YA9iD2ktms6V9GNMhl8V_J_KDEdYNr2FivodEDigouaCj-cCrf6xI06zzL2&spc=UWF9fwchJUfL9gnn3xdhOFLkulT_69B8rlrE36jpuqMhR363jL4csY2i6RKt&vprv=1&svpuc=1&mime=video%2Fmp4&ns=iTSXtoNbRS3ArlyCWIKf22AQ&gir=yes&clen=17564546&ratebypass=yes&dur=201.108&lmt=1714616499207722&mt=1714726848&fvip=6&c=WEB&sefc=1&txp=4538434&n=lPTGqfNZ7g8DBbWQ4I&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cxpc%2Cbui%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cns%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AHWaYeowRgIhAORrjBKIQtMgGXXBzz3dO1-VczqNppUO1Aq_ftb_HxZmAiEA1HXG6NlIRruqbZdqCLB38CeDms_HevDX1_ddbEtQBbA%3D&sig=AJfQdSswRAIgabzGue0VuaLApJsPXMcmPTB',
      hwAcc: HwAcc.disabled,
      autoPlay: true,
      options: VlcPlayerOptions(
        advanced: VlcAdvancedOptions([
          VlcAdvancedOptions.networkCaching(2000),
        ]),
      ),
    );

  }

  @override
  void dispose() async {
    super.dispose();
    await _videoPlayerController.stopRendererScanning();
    await _videoPlayerController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                         Container(
                           width: 32.w,
                           height: 32.h,
                           decoration: BoxDecoration(
                             image: DecorationImage(image: AssetImage("assets/leftarrow.png"),
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
                    Container(
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

                   ],
                 ),
               ),

               YoutubePlayer(
                 controller: _controller, // Controler that we created earlier
                 aspectRatio: 16 / 9,      // Aspect ratio you want to take in screen
               ),
               Expanded(child: TabBarforVideoPlayer()),


             ],
           ),
         ),
      ),
    );
  }


}
