import 'package:cricketpoll/Notifier/Create_Team_Notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Model/ContestTeamModel.dart';



final downloadProvider = ChangeNotifierProvider<Create_Team_Notifier>((ref) {
  return Create_Team_Notifier();
});

class Contest_Team_List extends ConsumerWidget {
  List<ContestModel> l=[ContestModel("assets/dhoni.png", "BAD", "MS DHONI", "74", "8.5"),ContestModel("assets/virat.png", "BAD", "KOHALI", "893", "6.5"),ContestModel("assets/rahul.png", "SOH", "KL RAHUL", "9300", "2.5")];
  List<String> selected_players=[];
  bool iselementinlist=false;
  String selected_name=" ";
  Color c1=Colors.black;
  Color c2=Colors.white;

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final data=ref.watch(downloadProvider);
    return  Scaffold(
      body: Stack(
        children: [
          ListView.builder(itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
               if(ref.watch(downloadProvider).selected_players.contains(l[index].name)){
                 ref.watch(downloadProvider).remove(l[index].name);
                 print(ref.watch(downloadProvider).listlength());
                 print("remoove");
                 print(ref.watch(downloadProvider).selected_players);
               }
               else if(!ref.watch(downloadProvider).selected_players.contains(l[index].name)){
                 ref.watch(downloadProvider).add(l[index].name);
                 print(ref.watch(downloadProvider).listlength());
                 print(ref.watch(downloadProvider).selected_players);
                 print("add");
               }
               
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  left:16.0,
                  right: 16.0,
                  top: 10,
                  bottom: 10,
                ),
                child: Container(
                  width: double.infinity,
                  height:  71.h,
                  color: data.color(l[index].name),
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
              ),
            );
          },
            itemCount: l.length,
          ),


        ],
      ),
    );
  }
}

