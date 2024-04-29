import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Model/ContestTeamModel.dart';

class Contest_Team_List extends StatefulWidget {
  const Contest_Team_List({super.key});

  @override
  State<Contest_Team_List> createState() => _Contest_Team_ListState();
}

class _Contest_Team_ListState extends State<Contest_Team_List> {
  
  List<ContestModel> l=[ContestModel("assets/dhoni.png", "BAD", "MS DHONI", "74", "8.5"),ContestModel("assets/virat.png", "BAD", "KOHALI", "893", "6.5"),ContestModel("assets/rahul.png", "SOH", "KL RAHUL", "9300", "2.5"),ContestModel("assets/dhoni.png", "BAD", "MS DHONI", "74", "8.5"),ContestModel("assets/virat.png", "BAD", "KOHALI", "893", "6.5"),ContestModel("assets/rahul.png", "SOH", "KL RAHUL", "9300", "2.5")];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [

          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                    left:16.0,
                  right: 16.0,
                  top: 10,
                  bottom: 10,
                ),
                child: Container(
                  width: double.infinity,
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
                                image: DecorationImage(image: AssetImage("${l[index].image}")),
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
                                  child: Text("${l[index].cate}",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      fontSize: 10,
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
                        width: 05,
                      ),
                      Container(
                        height: 64.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${l[index].name}",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff10081C),
                                fontSize: 16,
                              ),
                            ),
                            Text("Set by 90.79%",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff535C6E),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 61.w,
                              height: 24.h,
                              child: Center(
                                child: Text("${l[index].points}",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff10081C),
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Container(
                              width: 61.w,
                              height: 24.h,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("${l[index].credits}",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff10081C),
                                      fontSize: 16,
                                    ),
                                  ),
                                  Container(
                                    width:24,
                                    height: 24,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("assets/decrease.png"),
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
              );
            },
            itemCount: l.length,
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.all(20),
              width: 135.w,
              height: 50.h,
              child: Center(
                child: Text("NEXT",
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
        ],
      ),
    );
  }
}
