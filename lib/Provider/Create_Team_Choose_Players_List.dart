import 'package:cricketpoll/Screen/Video_Player_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Screen/Create_Team_Choose_Captain.dart';
import 'Contest_Team_List.dart';

class Create_Team_Choose_Players_List extends ConsumerWidget {

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      body: Stack(
        children: [
          ListView.builder(itemBuilder: (context, index) {
            return InkWell(
              onTap: () {

              },
              child: Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                ),
                child: Center(
                  child: Container(
                    width: 328,
                    height:  71.h,
                    child: Row(
                      children: [
                        Container(
                          width: 64.w,
                          height: 71.h,
                          child: Stack(
                            children: [
                              Container(
                                width: 64.w,
                                height: 64.h,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/playervector.png"),),
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.red.withOpacity(0.3),
                                ),
                              ),

                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  width: 40.w,
                                  height: 19.h,
                                  child: Center(
                                    child: Text("BAD",
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        fontSize: 10.sp,
                                      ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xffE91E63),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          height: 64.h,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${ref.watch(downloadProvider).selected_players[index]}",
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff10081C),
                                  fontSize: 16.sp,
                                ),
                              ),
                              Text("Set by 90.79%",
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff535C6E),
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Expanded(child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width:61.w,

                              child: Center(
                                child: Column(
                                  children: [
                                    Visibility(
                                      visible:ref.watch(downloadProvider).Get_Capatin()==ref.watch(downloadProvider).selected_players[index]?true:false,
                                      replacement:InkWell(
                                        onTap: () {
                                          if(ref.watch(downloadProvider).selected_players[index]==ref.watch(downloadProvider).Get_ViceCapatin()){
                                            print("invalid");
                                          }
                                          else{
                                            ref.watch(downloadProvider).SetCapatin(ref.watch(downloadProvider).selected_players[index]);
                                          }
                                        },
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          child: Center(
                                            child: Text("C",
                                              style: GoogleFonts.inter(
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xff535C6E),
                                                fontSize: 16.sp,
                                              ),
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Color(0xffD9D9D9),
                                            ),
                                          ),
                                        ),
                                      ),
                                      child: Container(
                                width: 40,
                                  height: 40,
                                  child: Center(
                                    child: Text("3X",
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: 16.sp,
                                      ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient( colors: [Color(0xffFF7020),Color(0xffF63936),Color(0xffED044A)],),
                                  ),
                                ),
                                    ),
                                    Text("5.35%",
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff535C6E),
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Container(
                              width:61.w,

                              child: Center(
                                child: Column(
                                  children: [
                                    Visibility(
                                      visible:ref.watch(downloadProvider).Get_ViceCapatin()==ref.watch(downloadProvider).selected_players[index]?true:false,
                                      replacement:InkWell(
                                        onTap: () {
                                          if(ref.watch(downloadProvider).selected_players[index]==ref.watch(downloadProvider).Get_Capatin()){
                                            print("invalid");
                                          }
                                          else{
                                            ref.watch(downloadProvider).SetViceCapatin(ref.watch(downloadProvider).selected_players[index]);
                                          }

                                        },
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          child: Center(
                                            child: Text("VC",
                                              style: GoogleFonts.inter(
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xff535C6E),
                                                fontSize: 16.sp,
                                              ),
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Color(0xffD9D9D9),
                                            ),
                                          ),
                                        ),
                                      ),
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        child: Center(
                                          child: Text("2X",
                                            style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                              fontSize: 16.sp,
                                            ),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient( colors: [Color(0xffFF7020),Color(0xffF63936),Color(0xffED044A)],),
                                        ),
                                      ),
                                    ),

                                    Text("8.35%",
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff535C6E),
                                        fontSize: 12.sp,
                                      ),
                                    ),

                                  ],
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
              ),
            );
          },
            itemCount: ref.watch(downloadProvider).listlength(),
          ),


          Align(
            alignment: Alignment.bottomCenter,
            child: InkWell(
              onTap: () {

              },
              child: Container(
                margin: EdgeInsets.all(20),
                width: 135.w,
                height: 50.h,
                child: Center(
                  child: Text("SAVE",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xffFF7020),Color(0xffF63936),Color(0xffED044A)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
