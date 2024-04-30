import 'package:cricketpoll/Provider/Contest_Team_List.dart';
import 'package:cricketpoll/TabBarScreens/Contest_tab_1.dart';
import 'package:cricketpoll/Tabbar/TabBarforContest.dart';
import 'package:cricketpoll/Tabbar/TabBarforCreateteam.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Create_Team extends StatefulWidget {
  const Create_Team({super.key});

  @override
  State<Create_Team> createState() => _Create_TeamState();
}

class _Create_TeamState extends State<Create_Team> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Consumer(
          builder: (context, ref, child) {
            return Container(
              width:double.infinity,
              height: double.infinity,
              color: Color(0xff10081C),
              child: Stack(
                children: [

                  Column(
                    children: [
                      Container(
                        width: double.infinity,
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

                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Text("Credits Left",
                                            style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff9D91AB),
                                              fontSize: 12,
                                            ),
                                          ),
                                          Row(
                                            children: [


                                              Container(
                                                width: 17.81.w,
                                                height: 17.81.h,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(image: AssetImage("assets/coin.png"),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 05,
                                              ),
                                              Text("80",
                                                style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
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
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text("10h 10min Left",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff4CAF50),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width:32.w,
                                  height: 32.h,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/dclogo.png"),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 05,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("BAD",
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff9D91AB),
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text("02",
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),

                              ],
                            ),

                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text("Players",
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff9D91AB),
                                        fontSize: 12,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width:18.w,
                                          height: 18.h,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("assets/helmet.png"),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 05,
                                        ),
                                        Text("${ref.watch(downloadProvider).listlength()}",
                                          style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text("/11",
                                          style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff9D91AB),
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              ],
                            ),

                            Row(
                              children: [


                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text("SOH",
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff9D91AB),
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text("02",
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 05,
                                ),
                                Container(
                                  width:32.w,
                                  height: 32.h,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/gtlogo.png"),
                                    ),
                                  ),
                                ),
                              ],
                            ),



                          ],
                        ),
                      ),
                      SizedBox(height: 05,),
                      Container(
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(

                              height: 16.h,
                              child: Row(
                                children: [
                                  Container(
                                    width: 25.45.w,
                                    height: 16.h,
                                    decoration: BoxDecoration(
                                      gradient: ref.watch(downloadProvider).selected_players.length>=1?LinearGradient(
                                        colors: [Color(0xffFF7020),Color(0xffF63936),Color(0xffED044A)],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ):null,
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        bottomLeft: Radius.circular(12),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 1,),
                                  Container(
                                    width: 25.45.w,
                                    height: 16.h,
                                    decoration: BoxDecoration(
                                      gradient: ref.watch(downloadProvider).selected_players.length>=2?LinearGradient(
                                        colors: [Color(0xffFF7020),Color(0xffF63936),Color(0xffED044A)],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ):null,
                                      color: Colors.white,

                                    ),
                                  ),
                                  SizedBox(width: 1,),
                                  Container(
                                    width: 25.45.w,
                                    height: 16.h,
                                    decoration: BoxDecoration(
                                      gradient: ref.watch(downloadProvider).selected_players.length>=3?LinearGradient(
                                        colors: [Color(0xffFF7020),Color(0xffF63936),Color(0xffED044A)],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ):null,
                                      color: Colors.white,

                                    ),
                                  ),
                                  SizedBox(width: 1,),
                                  Container(
                                    width: 25.45.w,
                                    height: 16.h,
                                    decoration: BoxDecoration(
                                      gradient: ref.watch(downloadProvider).selected_players.length>=4?LinearGradient(
                                        colors: [Color(0xffFF7020),Color(0xffF63936),Color(0xffED044A)],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ):null,
                                      color: Colors.white,

                                    ),
                                  ),

                                  SizedBox(width: 1,),
                                  Container(
                                    width: 25.45.w,
                                    height: 16.h,
                                    decoration: BoxDecoration(
                                      gradient: ref.watch(downloadProvider).selected_players.length>=5?LinearGradient(
                                        colors: [Color(0xffFF7020),Color(0xffF63936),Color(0xffED044A)],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ):null,
                                      color: Colors.white,

                                    ),
                                  ),
                                  SizedBox(width: 1,),
                                  Container(
                                    width: 25.45.w,
                                    height: 16.h,
                                    decoration: BoxDecoration(
                                      gradient: ref.watch(downloadProvider).selected_players.length>=6?LinearGradient(
                                        colors: [Color(0xffFF7020),Color(0xffF63936),Color(0xffED044A)],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ):null,
                                      color: Colors.white,

                                    ),
                                  ),
                                  SizedBox(width: 1,),
                                  Container(
                                    width: 25.45.w,
                                    height: 16.h,
                                    decoration: BoxDecoration(
                                      gradient: ref.watch(downloadProvider).selected_players.length>=7?LinearGradient(
                                        colors: [Color(0xffFF7020),Color(0xffF63936),Color(0xffED044A)],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ):null,
                                      color: Colors.white,

                                    ),
                                  ),
                                  SizedBox(width: 1,),
                                  Container(
                                    width: 25.45.w,
                                    height: 16.h,
                                    decoration: BoxDecoration(
                                      gradient: ref.watch(downloadProvider).selected_players.length>=8?LinearGradient(
                                        colors: [Color(0xffFF7020),Color(0xffF63936),Color(0xffED044A)],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ):null,
                                      color: Colors.white,

                                    ),
                                  ),
                                  SizedBox(width: 1,),
                                  Container(
                                    width: 25.45.w,
                                    height: 16.h,
                                    decoration: BoxDecoration(
                                      gradient: ref.watch(downloadProvider).selected_players.length>=9?LinearGradient(
                                        colors: [Color(0xffFF7020),Color(0xffF63936),Color(0xffED044A)],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ):null,
                                      color: Colors.white,

                                    ),
                                  ),
                                  SizedBox(width: 1,),
                                  Container(
                                    width: 25.45.w,
                                    height: 16.h,
                                    decoration: BoxDecoration(
                                      gradient: ref.watch(downloadProvider).selected_players.length>=10?LinearGradient(
                                        colors: [Color(0xffFF7020),Color(0xffF63936),Color(0xffED044A)],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ):null,
                                      color: Colors.white,

                                    ),
                                  ),
                                  SizedBox(width: 1,),
                                  Container(
                                    width: 25.45.w,
                                    height: 16.h,
                                    decoration: BoxDecoration(
                                      gradient: ref.watch(downloadProvider).selected_players.length>=11?LinearGradient(
                                        colors: [Color(0xffFF7020),Color(0xffF63936),Color(0xffED044A)],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ):null,
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(12),
                                        bottomRight: Radius.circular(12),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            InkWell(
                              onTap: () {
                                ref.watch(downloadProvider).selected_players.clear();
                              },
                              child: Container(
                                width:24,
                                height: 24,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/decrease.png"),
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),


                      Text("Max 7 players from a team",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),

                      SizedBox(height: 10,),
                      Expanded(child: Container(
                        child: TabBarforCreateTeam(),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(16),
                            topLeft: Radius.circular(16),
                          ),
                        ),
                      )),

                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
