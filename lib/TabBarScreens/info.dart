import 'package:flutter/material.dart';

import '../Model/PlayerModel.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {

  bool TEAM_1=true;
  bool TEAM_2=true;


  List<PlayerModel> list_team1=[PlayerModel("Abishek Poreal", "Wicket Keeper"),PlayerModel("Anrich Nortji", "Bowler"),PlayerModel("Axer Patell", "All Rounder"),PlayerModel("Jake Fraser Mccgurk", "Batsman"),PlayerModel("Khalel Ahmed", "Bowler"),PlayerModel("Kulldeep Yadhav", "Bowler"),PlayerModel("Mugesh Kumar", "Bowler"),PlayerModel("Harry Brook", "Batsman"),PlayerModel("Ricky Bhui", "Batsman"),PlayerModel("Tristan Stubbs", "Batsman"),];
  List<PlayerModel> list_team2=[PlayerModel("Azmatullah Omarzal", "All Rounder"),PlayerModel("David Miller", "Batsman"),PlayerModel("Mohit Sharma", "Bowler"),PlayerModel("Noor Ahmedd", "Bowler"),PlayerModel("Raghul Tiwatia", "All Rounder"),PlayerModel("Rasid Khann ", "All Rounder"),PlayerModel("Sai Kishore", "Bowler"),PlayerModel("Sandeep Warrior", "Bowler"),PlayerModel("Shai SSudharson", "Batsman"),PlayerModel("Shufman Gill", "Batsman"),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
         scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
               Container(
                 width: double.infinity,
                 height: 50,
                 padding: EdgeInsets.all(10),
                 child:  Align(alignment: Alignment.centerLeft,
                   child: Text("Match Details",
                     style: TextStyle(
                       fontWeight: FontWeight.w500,
                       color: Colors.white,
                       fontSize: 15,
                     ),
                   ),
                 ),
                 decoration: BoxDecoration(
                   gradient: LinearGradient(colors: [Colors.orange,Colors.red],
                   begin: Alignment.centerLeft,
                     end: Alignment.centerRight,
                   ),
                 ),
               ),

              ListTile(
                title:  Text("Match Id",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                subtitle:  Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("1426",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                  ],
                ),
              ),

              ListTile(
                title:  Text("Match",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                subtitle:  Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("DELHI vs GUJARAT",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                  ],
                ),
              ),
              ListTile(
                title:  Text("Series",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                subtitle:  Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Indian T20 League",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                  ],
                ),
              ),
              ListTile(
                title:  Text("Match Type ",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                subtitle:  Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Twenty20",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                  ],
                ),
              ),
              ListTile(

                title:  Text("Timing",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                subtitle:  Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("07:31 PM - 11:12 PM",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                  ],
                ),
              ),

              ListTile(

                title:  Text("Timing",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                subtitle:  Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("07:31 PM - 11:12 PM",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                  ],
                ),
              ),

              Container(
                child: ListTile(
                  trailing: Container(
                    width: 25,
                    height: 25,
                    child: Center(
                      child: Visibility(
                        visible: TEAM_1,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              TEAM_1=false;
                            });
                          },
                          child: Icon(Icons.keyboard_arrow_down_rounded,
                                                color: Colors.white,
                                                ),
                        ),
                      replacement: InkWell(
                        onTap: () {
                          setState(() {
                            TEAM_1=true;
                          });
                        },
                        child: InkWell(
                          child: Icon(Icons.keyboard_arrow_up_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      ),

                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(colors: [Colors.orangeAccent,Colors.red,],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                  ),
                  title: Text("DELHI",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.pinkAccent.withOpacity(0.7),Colors.amberAccent.withOpacity(0.4),],
                  begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),

              Visibility(
                visible: TEAM_1,
                child: Container(
                  width: double.infinity,
                  height: 500,
                  child: ListView.builder(
                     itemCount: list_team1.length,
                    itemBuilder: (context, index) {

                    return ListTile(
                      title: Text(list_team1[index].PLAYER_NAME,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      subtitle: Text(list_team1[index].PLAYER_ROLE,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 11,
                        ),
                      ),
                      leading: Container(
                        width: 30,
                        height: 30,
                        child: Center(
                          child: Icon(
                            Icons.person,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent.withOpacity(0.4),
                      shape: BoxShape.circle,
                        ),
                      ),
                    );
                  },),
                ),
              ),

              Container(
                child: ListTile(
                  trailing: Container(
                    width: 25,
                    height: 25,
                    child: Center(
                      child: Visibility(
                        visible: TEAM_2,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              TEAM_2=false;
                            });
                          },
                          child: Icon(Icons.keyboard_arrow_down_rounded,
                            color: Colors.white,
                          ),
                        ),
                        replacement: InkWell(
                          onTap: () {
                            setState(() {
                              TEAM_2=true;
                            });
                          },
                          child: Icon(Icons.keyboard_arrow_up_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ),

                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(colors: [Colors.orangeAccent,Colors.red,],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                  ),
                  title: Text("GUJARAT",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.pinkAccent.withOpacity(0.7),Colors.amberAccent.withOpacity(0.4),],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),

              Visibility(
                visible: TEAM_2,
                child: Container(
                  width: double.infinity,
                  height: 500,
                  child: ListView.builder(
                    itemCount: list_team2.length,
                    itemBuilder: (context, index) {

                      return ListTile(
                        title: Text(list_team2[index].PLAYER_NAME,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        subtitle: Text(list_team2[index].PLAYER_ROLE,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 11,
                          ),
                        ),
                        leading: Container(
                          width: 30,
                          height: 30,
                          child: Center(
                            child: Icon(
                              Icons.person,
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.orangeAccent.withOpacity(0.4),
                            shape: BoxShape.circle,
                          ),
                        ),
                      );
                    },),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
