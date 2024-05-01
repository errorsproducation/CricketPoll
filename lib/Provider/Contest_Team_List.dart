import 'package:cricketpoll/Notifier/Create_Team_Notifier.dart';
import 'package:cricketpoll/Screen/Create_Team_Choose_Captain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Model/ContestTeamModel.dart';
import '../Screen/Create_Team.dart';



final downloadProvider = ChangeNotifierProvider<Create_Team_Notifier>((ref) {
  return Create_Team_Notifier();
});

class Contest_Team_List extends ConsumerWidget {
  List<ContestModel> l=[ContestModel("assets/dhoni.png", "BAD", "MS Dhoni", "74", "8.5"),ContestModel("assets/virat.png", "BAD", "V Kohli", "893", "6.5"),ContestModel("assets/rahul.png", "SOH", "KL Rahul", "9300", "2.5"),ContestModel("assets/bumra.png", "SOH", "Jasprit Bumrah", "74", "7.5"),ContestModel("assets/sam.png", "BAD", "Billings", "89", "7.5"),ContestModel("assets/jon.png", "SOH", "Bairstow", "80  ", "8.5")];
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
              child: Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  gradient: ref.watch(downloadProvider).isinlist(l[index].name)?LinearGradient(colors: [Color(0xffFBBCC5),Color(0xffFDC8C0),Color(0xffFFD0BE)],):null,
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
                              Text("${l[index].name}",
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
                                      fontSize: 16.sp,
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
                                        fontSize: 16.sp,
                                      ),
                                    ),
                                    Container(
                                      width:24,
                                      height: 24,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(image: ref.watch(downloadProvider).isinlist(l[index].name)?AssetImage("assets/decrease.png"):AssetImage("assets/add.png"),
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
              ),
            );
          },
            itemCount: l.length,
          ),


          Align(
            alignment: Alignment.bottomCenter,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Create_Team_Choose_Captain(),));
              },
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
          ),


        ],
      ),
    );
  }
}

