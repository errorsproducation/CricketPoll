import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoPLayer_Tab_1 extends StatefulWidget {
  const VideoPLayer_Tab_1({super.key});

  @override
  State<VideoPLayer_Tab_1> createState() => _VideoPLayer_Tab_1State();
}

class _VideoPLayer_Tab_1State extends State<VideoPLayer_Tab_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,

        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                height: 119.h,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Practice Contest",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              color: Color(0xff535C6E),
                              fontSize: 12.sp,
                            ),
                          ),


                          Text("4 Spots",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              color: Color(0xff10081C),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 0,
                        bottom: 0,
                        right: 10,
                        left: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width:18.w,
                                height:18.h,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/medal.png"),),
                                ),
                              ),
                              SizedBox(width: 05,),
                              Text("1st prize:",
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff535C6E),
                                  fontSize: 12,
                                ),
                              ),
                              Text(" \$2500",
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff10081C),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              Container(
                                width:18.w,
                                height:18.h,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/cup.png"),),
                                ),
                              ),
                              SizedBox(width: 05,),
                              Text("60%",
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff10081C),
                                  fontSize: 14,
                                ),
                              ),
                              Text("Winners",
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff535C6E),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),


                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 32.h,
                            child: Stack(
                              children: [

                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: 47.w,
                                    height: 20.h,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 20.w,
                                          height: 20.h,
                                          child: Center(
                                            child:  Text("T1",
                                              style: GoogleFonts.inter(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(4),
                                            gradient: LinearGradient(
                                              colors: [Color(0xffFF7020),Color(0xffF63936),Color(0xffED044A)],
                                              begin: Alignment.centerLeft,
                                              end: Alignment.centerRight,
                                            ),
                                          ),
                                        ),

                                        Text("108",
                                          style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff535C6E),
                                            fontSize: 12,
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 5,
                                    bottom: 0,
                                    right: 10,
                                    left: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("JENIF054GF",
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff110422),
                                          fontSize: 12,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text("#2",
                                            style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff110422),
                                              fontSize: 12,
                                            ),
                                          ),
                                          SizedBox(width: 02,),
                                          Container(
                                            width:12.w,
                                            height:12.h,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(image: AssetImage("assets/arrowup.png"),),
                                            ),
                                          ),
                                        ],
                                      ),
                                      ],
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/vrect.png"),
                              fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.6),
                    width:0.5,
                  ),
                  boxShadow: [
                    BoxShadow(

                      color: Color(0x22000000), // Black color with 8% opacity
                      offset: Offset(0, 2), // X: 0, Y: 2
                      blurRadius: 10, // Blur radius
                      spreadRadius: 0, // Spread radius

                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
