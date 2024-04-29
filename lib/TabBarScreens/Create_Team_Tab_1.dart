import 'package:cricketpoll/Provider/Contest_Team_List.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Create_Team_Tab_1 extends StatefulWidget {
  const Create_Team_Tab_1({super.key});

  @override
  State<Create_Team_Tab_1> createState() => _Create_Team_Tab_1State();
}

class _Create_Team_Tab_1State extends State<Create_Team_Tab_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 16.0,
                bottom: 0,
                right: 16.0,
                left: 16.0,
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
                          child: Text("Points",
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
                          child: Text("Credits",
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
          ),
         Expanded(child: Contest_Team_List()),
        ],
      ),
    );
  }
}
