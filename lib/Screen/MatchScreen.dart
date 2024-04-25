import 'package:cricketpoll/Screen/Dashboard.dart';
import 'package:cricketpoll/Tabbar/TabBarFormatch.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MatchScreen extends StatefulWidget {
  const MatchScreen({super.key});

  @override
  State<MatchScreen> createState() => _MatchScreenState();
}

class _MatchScreenState extends State<MatchScreen> {
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
                 height: 70,
                 color: Colors.black,
                 child: Row(
                   children: [
                     IconButton(onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => Dashboard(),));
                     }, icon: Icon(Icons.arrow_back_ios,
                       color: Colors.white,
                     ),
                     ),
                     Expanded(child: Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         IconButton(onPressed: () {

                         }, icon: Icon(Icons.share,
                           color: Colors.white,
                         ),
                         ),
                       ],
                     ))

                   ],
                 ),
               ),

              Container(
                width: double.infinity,
                height: 140,
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Twenty20",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                       SizedBox(
                         width: 3,
                       ),
                       Container(
                         width: 1,
                         height: 20,
                         color: Colors.black,
                       ),
                        SizedBox(
                          width: 3,
                        ),
                        Text("Wed, April 24,2024",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        Expanded(child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 30,
                              width: 90,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 8,
                                    height: 8,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      shape: BoxShape.circle,
                                    ),
                                  ),

                                  Text("COMPLETED",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Colors.orange.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.orange,
                                ),

                              ),
                            ),
                          ],
                        ))

                      ],
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      child: Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/dclogo.png",
                              ),
                                fit: BoxFit.fill,
                              ),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("DELHI",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("224/4",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                    fontSize: 13,
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text("(20.0/20 Ov)",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    fontSize: 13,
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
                      height: 40,
                      child: Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(image: AssetImage("assets/gtlogo.png",
                              ),
                                fit: BoxFit.fill,
                              ),
                              border: Border.all(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("GUJARAT",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("220/8",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                    fontSize: 13,
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text("(20.0/20 Ov)",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    fontSize: 13,
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

              Expanded(child: TabBarFormatch()),
            ],
          ),
        ),
      ),
    );
  }
}
