import 'package:cricketpoll/Screen/NewsPage.dart';
import 'package:cricketpoll/Tabbar/TabBarFormatch.dart';
import 'package:flutter/material.dart';

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
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  )
                ),
              ),
              Container(
                height: 50,
                
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.all(7),
                      width: 40,
                      height: 40,
                      child: Center(
                        child: Icon(Icons.person,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape:  BoxShape.circle,
                      ),
                    ),

                  ],
                ),
              ),

              Container(
                width: double.infinity,
                height: double.infinity,
               // color: Colors.lightBlueAccent,
                child: Column(
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      width: double.infinity,
                      height: 220,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("GCPL T20 2023",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                              Expanded(child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 150,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 10,
                                          height: 10,
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        SizedBox(width: 5,),
                                        Text("COMPLETED",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                        color: Colors.white,
                                      ),

                                    ),
                                  )
                                ],
                              ))
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 70,
                                      height: 70,
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
                                      height: 10,
                                    ),

                                    Text("DC",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                child: Column(
                                  children: [
                                    Text("VS",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => MatchScreen(),));
                                      },
                                      child: Container(
                                        height: 40,
                                        width: 130,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.play_arrow_rounded,
                                            color: Colors.white,
                                            ),
                                            SizedBox(width: 5,),
                                            Text("Watch Now",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.deepOrange.withOpacity(0.4),
                                          borderRadius: BorderRadius.circular(20),
                                          border: Border.all(
                                            color: Colors.white,
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
                                      width: 70,
                                      height: 70,
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
                                      height: 10,
                                    ),

                                    Text("GT",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),


                            ],
                          ),

                          Expanded(child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                            Container(
                              width: 170,
                              height: 30,
                              child: Center(
                                child: Text("DC won by 13 Run(s)",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),

                            ),
                          ],))
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
                    margin: EdgeInsets.all(15),
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
            ],
          ),
        ),
      ),
    );
  }
}
