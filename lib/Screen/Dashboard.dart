import 'package:cricketpoll/Screen/NewsPage.dart';
import 'package:cricketpoll/Tabbar/TabBarFormatch.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'MatchScreen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnnotatedRegion(
        value: SystemUiOverlayStyle(
          statusBarColor: Color(0xff10081C),
          statusBarIconBrightness: Brightness.light,
        ),
        child: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
        
        
                Container(
                  height: 165,
                  decoration: BoxDecoration(
                    color: Color(0xff10081C),
        
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    )
                  ),
                ),
                Container(
                  height: 50,
        
                  child: Row(
                    children: [
                      
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left:15,),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(image: AssetImage("assets/applogo.png"),fit: BoxFit.fill,),
                              shape:  BoxShape.circle,
                            ),
                          ),
                          SizedBox(width:05),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Cricket",
                                style: GoogleFonts.barlow(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              Text("Poll",
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(  
                              margin: EdgeInsets.only(right:15,),
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(image: AssetImage("assets/avatar.png"),fit: BoxFit.fill,),
                                shape:  BoxShape.circle,
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
                  height: double.infinity,
                 // color: Colors.lightBlueAccent,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 80,
                        ),
                        Container(
                          margin: EdgeInsets.all(15),
                          width: 328,
                          height: 174,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/sliderimage.png",
                            ),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Container(
                                width:328,
                                height: 150,
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text("GCPL T20 2023",
                                          style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Expanded(child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              height: 24,
                                              width: 54,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 10,
                                                    height: 10,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xff4CAF50),
                                                      shape: BoxShape.circle,
                                                    ),
                                                  ),
                                                  SizedBox(width: 5,),
                                                  Text("LIVE",
                                                    style: GoogleFonts.inter(
                                                      fontWeight: FontWeight.w400,
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white.withOpacity(0.2),
                                                borderRadius: BorderRadius.circular(20),
        
        
                                              ),
                                            )
                                          ],
                                        ))
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                width: 56,
                                                height: 56,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  image: DecorationImage(image: AssetImage("assets/dclogo.png",
                                                  ),
                                                    fit: BoxFit.fill,
                                                  ),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
        
                                              Text("DC",
                                                style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white,
                                                  fontSize: 18.2,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
        
                                        Container(
                                          child: Column(
                                            children: [
                                              Text("VS",
                                                style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white,
                                                  fontSize: 24,
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MatchScreen(),));
                                                },
                                                child: Container(
                                                  height: 28,
                                                  width: 106,
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Image(
                                                        image: AssetImage("assets/play.png"),
                                                        fit: BoxFit.fill,
                                                      ),
                                                      SizedBox(width: 5,),
                                                      Text("Watch Now",
                                                        style: GoogleFonts.inter(
                                                          fontWeight: FontWeight.w500,
                                                          color: Colors.white,
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Color(0xffF44336),
                                                    borderRadius: BorderRadius.circular(21),
                                                    border: Border.all(
                                                      color: Colors.white,
                                                      width: 1,
                                                    ),
        
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
        
                                        Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                width: 56,
                                                height: 56,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(image: AssetImage("assets/gtlogo.png",
                                                  ),
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 05,
                                              ),
        
                                              Text("GT",
                                                style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white,
                                                  fontSize: 18.2,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
        
        
                                      ],
                                    ),
        
        
        
        
                                  ],
                                ),
                              ),
        
                              Expanded(child: Container(
                                width: 196,
                                height: 24,
                                child: Column(
        
                                  children: [
                                    Container(
                                      width: 196,
                                      height: 24,
                                      child: Center(
                                        child: Text("India Won by 150 Run(s)",
                                          style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(image: AssetImage("assets/Rect.png"),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ),
        
        
        
                            ],
                          ),
                        ),
        
                    SizedBox(
                      height:10,
                    ),
        
                        Container(
                          width: 328,
                          height: 72,
                          child: Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment:Alignment.centerLeft,
                                  child: Container(
                                    width: 64,
                                    height: 64,
                                    
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("assets/india.png"),fit: BoxFit.fill,),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment:Alignment.centerRight,
                                  child: Container(
                                    width: 64,
                                    height: 64,
        
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("assets/england.png"),fit: BoxFit.fill,),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                ),
        
        
                                Row(
                                  children: [
                                    SizedBox(width:10,),
                                  Container(
                                    width:40,
                                    height:40,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("assets/dclogo.png"),fit: BoxFit.fill,),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("India",
                                          style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                            fontSize: 14,
                                          ),
                                        ),
                                        Text("208-1 (19.5)",
                                          style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Text("England",
                                            style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black,
                                              fontSize: 14,
                                            ),
                                          ),
                                          Text("105-1 (20)",
                                            style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
        
                                      Container(
                                        width:40,
                                        height:40,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(image: AssetImage("assets/gtlogo.png"),fit: BoxFit.fill,),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
        
                                      SizedBox(width:10,),
                                    ],
                                    ),
                                    ),
        
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height:10,
                        ),
        
                        Container(
                          margin: EdgeInsets.all(15),
                          width: 328,
                          height: 220,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("Contest",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Expanded(child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("View All",
        
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          decorationColor: Color(0xffF44336),
                                          decorationThickness: 2,
                                          fontWeight: FontWeight.w500,
                                          color:Color(0xffF44336),
                                          fontSize: 12,
                                        ),
                                      ),
        
                                    ],
                                  ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 328,
                                height: 185,
                                padding: EdgeInsets.all(8),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width:10,),
                                          Text("ICC, Champions Trophy",
                                            style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                              fontSize: 12,
                                            ),
                                          ),
                                          Expanded(child: Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                width: 105,
                                                height:25,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text("Mega",
                                                      style: GoogleFonts.inter(
                                                        fontWeight: FontWeight.w400,
                                                        color: Colors.white,
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                    SizedBox(width:05),
                                                    Text("₹25k",
                                                      style: GoogleFonts.inter(
                                                        fontWeight: FontWeight.w600,
                                                        color: Colors.white,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(image: AssetImage("assets/Subtract.png"),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ))
                                        ],
                                      ),
                                     SizedBox(height:10),
                                     Container(
                                       width: 328,
                                       height: 50,
                                       padding: EdgeInsets.all(10),
        
                                       child: Stack(
                                         children: [
                                           Align(
                                             alignment:Alignment.center,
                                             child: Text("10h 10min Left",
                                               style: GoogleFonts.inter(
                                                 fontWeight: FontWeight.w500,
                                                 color: Color(0xff4CAF50),
                                                 fontSize: 12,
                                               ),
                                             ),
                                           ),
        
                                           Row(
                                             children: [
                                               Container(
                                                 width:140,
                                                 height:45,
                                                 child: Row(
                                                   mainAxisAlignment: MainAxisAlignment.start,
                                                   children: [
                                                     Container(
                                                       height: 35,
                                                       width: 35,
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
                                                           color: Colors.black,
                                                           fontSize: 14
                                                       ),
                                                     ),
                                                   ],
                                                 ),
                                                 decoration: BoxDecoration(
        
                                                   image: DecorationImage(image: AssetImage("assets/blue.png"),
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
                                                               color: Colors.black,
                                                               fontSize: 14
                                                           ),
                                                         ),
                                                         SizedBox(
                                                           width:05,
                                                         ),
                                                         Container(
                                                           height: 35,
                                                           width: 35,
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
                                      Container(
                                        width:328,
                                        height:35,
                                        padding: EdgeInsets.all(10),
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment:Alignment.topCenter,
                                              child: Container(
                                                width: 60,
                                                height: 19,
                                                child: Center(
                                                  child:  Text("5:00 PM",
                                                    style: GoogleFonts.inter(
                                                        fontWeight: FontWeight.w600,
                                                        color: Color(0xffF44336),
                                                        fontSize: 10,
                                                    ),
                                                  ),
                                                ),
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(image: AssetImage("assets/timeoutline.png"),
                                                  ),
                                                  borderRadius: BorderRadius.circular(16.67),
                                                ),
                                              ),
                                            ),
        
                                            Row(
                                              children: [
                                                Text("Badalona CC",
                                                  style: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff878D9A),
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                Expanded(child: Row(
                                                  mainAxisAlignment:  MainAxisAlignment.end,
                                                  children: [
                                                    Text("Sohal ",
                                                      style: GoogleFonts.inter(
                                                        fontWeight: FontWeight.w400,
                                                        color: Color(0xff878D9A),
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ],))
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(),
        
                                      Expanded(child: Row(
                                        children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 8,
                                          ),
                                          child: Text("Match alert (before 10h 10min )",
                                            style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff535C6E),
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
        
                                          Expanded(
                                              child: Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(right:8.0),
                                                child: Image(image: AssetImage("assets/switch.png"),
                                                ),
                                              ),
                                            ],
                                          )),
        
        
                                      ],)),
        
                                    ],
                                  ),
                                ),
                              ),
        
                            ],
                          ),
                        ),
                    SizedBox(
                      height: 10,
                    ),
        
                        Container(
                          margin: EdgeInsets.only(
                            left: 15,
                            right: 15,
                          ),
                          width: double.infinity,
                          height: 170,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("Polls Contest",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Expanded(child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("View All",
        
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          decorationColor: Color(0xffF44336),
                                          decorationThickness: 2,
                                          fontWeight: FontWeight.w500,
                                          color:Color(0xffF44336),
                                          fontSize: 12,
                                        ),
                                      ),
        
                                    ],
                                  ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              
                              Container(
                                width:328,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                  
                                  
                                      Container(
                                        width:258,
                                        height:136,
                                        padding: EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Text("1. Should Virat Kohli be compared to the GOOD of cricket ?",
                                                style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                  
                                            SizedBox(height:10,),
                                  
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Container(
                                                  width: 109,
                                                  height:28,
                                                  padding: EdgeInsets.all(5),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        width:16,
                                                        height:16,
                                                        
                                                        decoration: BoxDecoration(
                                                          shape: BoxShape.circle,
                                                          color: Color(0xffEA3CEE),
                                                        ),
                                                      ),
                                                      SizedBox(width:05,),
                                                      Text("CSK",
                                                        style: GoogleFonts.inter(
                                                          fontWeight: FontWeight.w500,
                                                          color: Color(0xff10081C),
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(49),
                                                  ),
                                                ),
                                  
                                                Container(
                                                  width: 109,
                                                  height:28,
                                                  padding: EdgeInsets.all(5),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        width:16,
                                                        height:16,
                                                        decoration: BoxDecoration(
                                                            shape: BoxShape.circle,
                                                            border: Border.all(
                                                              color: Color(0xffE4E0EA),
                                                            )
                                                        ),
                                                      ),
                                                      SizedBox(width:05,),
                                                      Text("SRH",
                                                        style: GoogleFonts.inter(
                                                          fontWeight: FontWeight.w500,
                                                          color: Color(0xff10081C),
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(49),
                                                  ),
                                                ),
                                              ],
                                            ),
                                  
                                            SizedBox(height:10,),
                                  
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Container(
                                                  width: 109,
                                                  height:28,
                                                  padding: EdgeInsets.all(5),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        width:16,
                                                        height:16,
                                                        decoration: BoxDecoration(
                                                            shape: BoxShape.circle,
                                                            border: Border.all(
                                                              color: Color(0xffE4E0EA),
                                                            )
                                                        ),
                                                      ),
                                                      SizedBox(width:05,),
                                                      Text("MI",
                                                        style: GoogleFonts.inter(
                                                          fontWeight: FontWeight.w500,
                                                          color: Color(0xff10081C),
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(49),
                                                  ),
                                                ),
                                  
                                                Container(
                                                  width: 109,
                                                  height:28,
                                                  padding: EdgeInsets.all(5),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        width:16,
                                                        height:16,
                                                        decoration: BoxDecoration(
                                                            shape: BoxShape.circle,
                                                            border: Border.all(
                                                              color: Color(0xffE4E0EA),
                                                            )
                                                        ),
                                                      ),
                                                      SizedBox(width:05,),
                                                      Text("RCB",
                                                        style: GoogleFonts.inter(
                                                          fontWeight: FontWeight.w500,
                                                          color: Color(0xff10081C),
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(49),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xff9C27B0),
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                      ),
                                  
                                  
                                  
                                  
                                  
                                      SizedBox(width:10,),
                                  
                                  
                                      Container(
                                        width:258,
                                        height:136,
                                        padding: EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Text("1. Should Virat Kohli be compared to the GOOD of cricket ?",
                                                style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                  
                                            SizedBox(height:10,),
                                  
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Container(
                                                  width: 109,
                                                  height:28,
                                                  padding: EdgeInsets.all(5),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        width:16,
                                                        height:16,
                                                        decoration: BoxDecoration(
                                                            shape: BoxShape.circle,
                                                            border: Border.all(
                                                              color: Color(0xffE4E0EA),
                                                            )
                                                        ),
                                                      ),
                                                      SizedBox(width:05,),
                                                      Text("CSK",
                                                        style: GoogleFonts.inter(
                                                          fontWeight: FontWeight.w500,
                                                          color: Color(0xff10081C),
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(49),
                                                  ),
                                                ),
                                  
                                                Container(
                                                  width: 109,
                                                  height:28,
                                                  padding: EdgeInsets.all(5),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        width:16,
                                                        height:16,
                                                        decoration: BoxDecoration(
                                                            shape: BoxShape.circle,
                                                            border: Border.all(
                                                              color: Color(0xffE4E0EA),
                                                            )
                                                        ),
                                                      ),
                                                      SizedBox(width:05,),
                                                      Text("SRH",
                                                        style: GoogleFonts.inter(
                                                          fontWeight: FontWeight.w500,
                                                          color: Color(0xff10081C),
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(49),
                                                  ),
                                                ),
                                              ],
                                            ),
                                  
                                            SizedBox(height:10,),
                                  
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Container(
                                                  width: 109,
                                                  height:28,
                                                  padding: EdgeInsets.all(5),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        width:16,
                                                        height:16,
                                                        decoration: BoxDecoration(
                                                            shape: BoxShape.circle,
                                                            border: Border.all(
                                                              color: Color(0xffE4E0EA),
                                                            )
                                                        ),
                                                      ),
                                                      SizedBox(width:05,),
                                                      Text("MI",
                                                        style: GoogleFonts.inter(
                                                          fontWeight: FontWeight.w500,
                                                          color: Color(0xff10081C),
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(49),
                                                  ),
                                                ),
                                  
                                                Container(
                                                  width: 109,
                                                  height:28,
                                                  padding: EdgeInsets.all(5),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        width:16,
                                                        height:16,
                                                        decoration: BoxDecoration(
                                                            shape: BoxShape.circle,
                                                            border: Border.all(
                                                              color: Color(0xffE4E0EA),
                                                            )
                                                        ),
                                                      ),
                                                      SizedBox(width:05,),
                                                      Text("RCB",
                                                        style: GoogleFonts.inter(
                                                          fontWeight: FontWeight.w500,
                                                          color: Color(0xff10081C),
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(49),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffE91E63),
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                      ),
                                  
                                    ],
                                  ),
                                ),
                              ),
        
                            ],
                          ),
                        ),
        
                        SizedBox(
                          height: 10,
                        ),
                    
                    
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewsPage(),));
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          right:15,
                          left:15,
                        ),
                        width: double.infinity,
                        height: 250,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text("News",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Expanded(child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("View All",
        
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        decorationColor: Colors.orange,
                                        decorationThickness: 2,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.orange,
                                        fontSize: 13,
                                      ),
                                    ),
        
                                  ],
                                ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: double.infinity,
                              height: 180,
        
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                    Icon(Icons.access_time_rounded,
                                      color: Colors.white,
                                       size: 16,
                                    ),
                                      Text(" Wed,April 24,2024",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text("Report",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: 17,
                                    ),
                                  ),
        
        
                                  Text("Pant, Axar Star in DC's nervy final-over win over GT",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white.withOpacity(0.7),
                                      fontSize: 13,
                                    ),
                                  ),
        
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                image: DecorationImage(image: AssetImage("assets/newsimage.jpg",
                                ),
                                  fit: BoxFit.fill,
                                ),
                                gradient: LinearGradient(
                                  colors: [Colors.transparent,Colors.blue],
                                  end: Alignment.bottomCenter,
                                  begin: Alignment.topCenter,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
        
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
