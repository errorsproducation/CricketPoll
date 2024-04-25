import 'package:cricketpoll/TabBarScreens/info.dart';
import 'package:flutter/material.dart';

class TabBarFormatch extends StatefulWidget {
  const TabBarFormatch({super.key});

  @override
  State<TabBarFormatch> createState() => _TabBarFormatchState();
}

class _TabBarFormatchState extends State<TabBarFormatch> {

  List<Widget> Tab_element=[Info()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: Scaffold(

          appBar: AppBar(
            leading: null,
            toolbarHeight: 0,
            automaticallyImplyLeading: false,
            bottom: TabBar(

              indicatorColor: Colors.red,
              labelColor: Colors.red,

              tabs: [
                Tab( text: "Info"),
                Tab( text: "Summary"),
                Tab( text: "Live"),
                Tab( text: "Scorecard"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Info(),
            ],
          ),
        ),
      ),
    );
  }
}
