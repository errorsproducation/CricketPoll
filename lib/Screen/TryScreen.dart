import 'package:flutter/material.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';

class TryvideoPlayer extends StatefulWidget {
  String url=" ";

  TryvideoPlayer(this.url);

  @override
  State<TryvideoPlayer> createState() => _TryvideoPlayerState(url);
}

class _TryvideoPlayerState extends State<TryvideoPlayer> {
  String url=" ";

  _TryvideoPlayerState(this.url);

  late VlcPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();
    //_controller.loadVideoById(videoId: "ht72EAmIITA");
    _videoPlayerController = VlcPlayerController.network(
      '$url',
      hwAcc: HwAcc.disabled,
      autoPlay: true,
      options: VlcPlayerOptions(
        advanced: VlcAdvancedOptions([
          VlcAdvancedOptions.networkCaching(2000),
        ]),
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VlcPlayer(
        controller: _videoPlayerController, // Controler that we created earlier
        aspectRatio: 16 / 9,      // Aspect ratio you want to take in screen
      ),
    );
  }
}
