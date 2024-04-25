import 'package:flutter/material.dart';

import 'Dashboard.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
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


                    ],
                  ),
                ),

                Container(
                  width: double.infinity,
                  height: 100,
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                      ),

                      Container(
                        height: 40,
                        width: 2,
                        color: Colors.black,
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Row(
                            children: [
                              Icon(Icons.access_time_rounded,
                                color: Colors.black,
                                size: 16,
                              ),
                              Text(" Wed,April 24,2024",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Text("Author : Gokul Gopal",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 110,
                  padding: EdgeInsets.all(10),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text("Southpaws Stand tall in another run-fest",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 21,
                        ),
                      ),
                      SizedBox(height: 05,),
                      Text("News Author : Gokul Gopal",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.grey.withOpacity(0.7),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  width: double.infinity,
                  height: 200,
                  padding: EdgeInsets.all(10),
                  child: Container(
                    height: 200,

                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      image: DecorationImage(image: AssetImage("assets/newsimage.jpg",
                      ),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),

                ),

                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text("High-scoring games in which 400-plus runs are scored, with the matches going down the wire, have become commonplace in IPL 2024 and it was no surprise that the Delhi Capitals vs Gujarat Titans clash at the Arun Jaitley Stadium adhered to the trend. The game on Wednesday was the 10th instance of a 400-plus aggregate in this edition of the tournament. And in this match, the left-handers from both teams turned out to be the primary source of entertainment.",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 15,
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
