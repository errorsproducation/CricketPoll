import 'package:cricketpoll/TabBarScreens/Create_Team_Tab_1.dart';
import 'package:flutter/material.dart';

class TabBarforCreateTeam extends StatefulWidget {
  const TabBarforCreateTeam({super.key});

  @override
  State<TabBarforCreateTeam> createState() => _TabBarforCreateTeamState();
}

class _TabBarforCreateTeamState extends State<TabBarforCreateTeam> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top:8.0,),
      child: DefaultTabController(
            length: 4,
            child: Scaffold(
              appBar: AppBar(
                leading: null,
                toolbarHeight: 0,
                automaticallyImplyLeading: false,

                bottom: TabBar(

                  indicatorColor: Colors.red,
                  labelColor: Colors.red,
                  unselectedLabelColor: Color(0xff535C6E),
                  tabs: [
                    Tab( text: "WK(0)"),
                    Tab( text: "BAT(0)"),
                    Tab( text: "AR(0)"),
                    Tab( text: "BOWL(0)"),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  Create_Team_Tab_1(),
                ],
              ),
            ),
          ),
    );
  }
}
