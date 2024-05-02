

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import 'package:google_fonts/google_fonts.dart';


class Video_Player_Page extends StatefulWidget {
  const Video_Player_Page({super.key});

  @override
  State<Video_Player_Page> createState() => _Video_Player_PageState();
}

class _Video_Player_PageState extends State<Video_Player_Page> {

  late VlcPlayerController _videoPlayerController;
  String _videoUrl=" ";

  Future<void> initializePlayer() async {}



  @override
  void initState() {
    super.initState();


    _videoPlayerController = VlcPlayerController.network(
      'https://media.w3.org/2010/05/sintel/trailer.mp4',
      hwAcc: HwAcc.full,
      autoPlay: true,
      options: VlcPlayerOptions(),
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
                          ))

                        ],
                      ),
                    )

                   ],
                 ),
               ),

               VlcPlayer(
                 controller: _videoPlayerController,
                 aspectRatio: 16 / 9,
                 placeholder: Center(child: CircularProgressIndicator()),
               ),

             ],
           ),
         ),
      ),
    );
  }


}
