import 'package:cricketpoll/TabBarScreens/VideoPlayer_Tab_1.dart';
import 'package:flutter/material.dart';

class TabBarforVideoPlayer extends StatefulWidget {
  const TabBarforVideoPlayer({super.key});

  @override
  State<TabBarforVideoPlayer> createState() => _TabBarforVideoPlayerState();
}

class _TabBarforVideoPlayerState extends State<TabBarforVideoPlayer> {
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

                Tab(text: "My Contest",),
                Tab( text: "My Team (1)"),
                Tab( text: "Commentry"),

              ],
            ),
          ),
          body: TabBarView(
            children: [
              VideoPLayer_Tab_1(),
            ],
          ),
        ),
      ),
    );
  }
}
