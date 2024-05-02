import 'package:cricketpoll/Provider/Create_Team_Choose_Players_List.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Create_Team_Choose_Captain extends StatefulWidget {
  const Create_Team_Choose_Captain({super.key});

  @override
  State<Create_Team_Choose_Captain> createState() => _Create_Team_Choose_CaptainState();
}

class _Create_Team_Choose_CaptainState extends State<Create_Team_Choose_Captain> {
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
                height: 80.h,
                color: Color(0xff10081C),
                padding: EdgeInsets.all(16),
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 32.w,
                          height: 32.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/arrowleftcreate_team.png"),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text("Contest Team",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 16.sp,
                            ),
                          ),
                          Text("10h 10min Left",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              color: Color(0xff4CAF50),
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height:34,
                      padding: EdgeInsets.only(
                        left: 16,
                        right: 16,
                        bottom: 8,
                        top: 8,
                      ),
                      color: Color(0xffF2F2F2),
                      child: Text("Choose your Captain and Vice Captain",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          color: Color(0xff10081C),
                          fontSize: 14.sp,
                        ),
                      ),
                    ),

                    Container(
                      width: double.infinity,
                      height:  34.h,
                      padding: EdgeInsets.only(
                        left: 16,
                        right: 16,
                        bottom: 8,
                        top: 8,
                      ),
                      child: Row(
                        children: [
                          Text("Selected",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              color: Color(0xff535C6E),
                              fontSize: 14,
                            ),
                          ),
                          Expanded(child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width:61.w,
                                height: 24.h,
                                child: Center(
                                  child: Text("C BY",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff535C6E),
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 20,),
                              Container(
                                width:61.w,
                                height: 24.h,
                                child: Center(
                                  child: Text("V BY",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff535C6E),
                                      fontSize: 14,
                                    ),
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
              Divider(),

              Expanded(child: Create_Team_Choose_Players_List()),





            ],
          ),
        ),
      ),
    );
  }
}
