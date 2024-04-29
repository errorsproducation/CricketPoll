import 'package:cricketpoll/TabBarScreens/Contest_tab_1.dart';
import 'package:flutter/material.dart';

import '../TabBarScreens/info.dart';

class TabBarforContest extends StatefulWidget {
  const TabBarforContest({super.key});

  @override
  State<TabBarforContest> createState() => _TabBarforContestState();
}

class _TabBarforContestState extends State<TabBarforContest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
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

                Tab(text: "Contest (120)",),
                Tab( text: "My Contest (0)"),
                Tab( text: "My Team (0)"),

              ],
            ),
          ),
          body: TabBarView(
            children: [
              Contest_tab_1(),
            ],
          ),
        ),
      ),
    );
  }
}
