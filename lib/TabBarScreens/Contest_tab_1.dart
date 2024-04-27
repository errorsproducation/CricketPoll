import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Contest_tab_1 extends StatefulWidget {
  const Contest_tab_1({super.key});

  @override
  State<Contest_tab_1> createState() => _Contest_tab_1State();
}

class _Contest_tab_1State extends State<Contest_tab_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 10,),
            Container(
              width: 328.w,
              height: 149.h,
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Max Price",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              color: Color(0xff535C6E),
                              fontSize: 12,
                            ),
                          ),


                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Entry:",
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff535C6E),
                                    fontSize: 12,
                                  ),
                                ),
                                Text(" 25",
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff4CAF50),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("₹25,200",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w700,
                              color: Color(0xff10081C),
                              fontSize: 20,
                            ),
                          ),

                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap:(){

                                          },
                                  child: Container(
                                    width: 64.w,
                                    height: 32.h,
                                    child: Center(
                                      child:  Text("₹20",
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xff4CAF50),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 10,),
                     Container(
                       width: 304.w,
                       height: 4.h,
                       child: SliderTheme(
                         data: SliderThemeData(
                             trackHeight: 4,


                             thumbShape: SliderComponentShape.noThumb,
                             overlayShape: SliderComponentShape.noOverlay),
                         child: Slider(

                             value: 50,
                             max: 100.0,
                             activeColor: Color(0xffE91E63),
                             inactiveColor: const Color(0xffFDD0DF),
                             onChanged: (double newValue) {
                             },
                             semanticFormatterCallback: (double newValue) {
                               return '${newValue.round()}';
                             }),
                       ),
                     ),
                      SizedBox(height: 5,),

                      Row(
                        children: [
                          Text("128 spots left",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              color: Color(0xffED044A),
                              fontSize: 12,
                            ),
                          ),

                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap:(){

                                  },
                                  child: Text("1,500 spots",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff535C6E),
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5,),

                      Divider(),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
