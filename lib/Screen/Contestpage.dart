import 'package:cricketpoll/Tabbar/TabBarforContest.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Contest extends StatefulWidget {
  const Contest({super.key});

  @override
  State<Contest> createState() => _ContestState();
}

class _ContestState extends State<Contest> {
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
                height: 165.h,
                padding: EdgeInsets.all(16),
                child: Column(

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 32.w,
                          height: 32.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/leftarrow.png"),
                            ),
                          ),
                        ),

                        Text("Contest",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),

                        Container(
                          width: 24.w,
                          height: 24.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/notificationicon.png"),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height:10.h,),
                    Container(
                      width: double.infinity,
                      height: 50.h,


                      child: Stack(
                        children: [

                          Align(
                            alignment:Alignment.center,
                            child: Text("VS",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ),

                          Row(
                            children: [
                              Container(
                                width:140,
                                height:38,

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 34,
                                      width: 34,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(image: AssetImage("assets/dclogo.png"),
                                          fit: BoxFit.fill,
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    SizedBox(
                                      width:05,
                                    ),
                                    Text("BAD",
                                      style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                          fontSize: 14,
                                      ),
                                    ),

                                  ],
                                ),
                                decoration: BoxDecoration(

                                  image: DecorationImage(image: AssetImage("assets/blueleft.png"),
                                    fit: BoxFit.fill,
                                  ),
                                ),

                              ),


                              Expanded(child: Row(
                                mainAxisAlignment:  MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width:140,
                                    height:45,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text("SOH",
                                          style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                              fontSize: 14,
                                          ),
                                        ),
                                        SizedBox(
                                          width:05,
                                        ),
                                        Container(
                                          height: 34,
                                          width: 34,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("assets/gtlogo.png"),
                                              fit: BoxFit.fill,
                                            ),
                                            shape: BoxShape.circle,
                                          ),
                                        ),



                                      ],
                                    ),
                                    decoration: BoxDecoration(

                                      image: DecorationImage(image: AssetImage("assets/red.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),

                                  ),
                                ],))
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height:10.h,),

                    Text("10h 10min Left",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        color: Color(0xff4CAF50),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Color(0xff10081C),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  )
                ),
              ),


              Expanded(child: TabBarforContest()),
            ],
          ),
        ),
      ),
    );
  }
}
