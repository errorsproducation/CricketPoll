import 'package:flutter_ffmpeg/flutter_ffmpeg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class GetYouTubeurl{
  final FlutterFFmpeg _flutterFFmpeg = FlutterFFmpeg();
  var hlsStream;


  Future<String> getTemporaryDirectoryPath() async {
    final directory = await getTemporaryDirectory();
    return directory.path;
  }

  Future<String> convertToHLS() async {
    // Initialize YouTubeExplode
    final yt = YoutubeExplode();

    try {
      // Get video ID

      // Get video details
      var video = await yt.videos.get('PPwJ75vqP_s');

      // Get video streams
      var streams = await yt.videos.streamsClient.getManifest('PPwJ75vqP_s');

      // Find the best stream with HLS format
      hlsStream= streams.muxed.withHighestBitrate();

      // Get temporary directory path
      /*var tempDirPath = await getTemporaryDirectoryPath();

      // Output path for the converted HLS file
      var outputPath = '$tempDirPath/${'KPO9i300l2I'}_converted.m3u8';

      // Download and convert to HLS
      print("${hlsStream.url}");
      await _flutterFFmpeg.execute('-i ${hlsStream.url} -c copy -bsf:a aac_adtstoasc $outputPath');

      print('Conversion completed successfully. Output path: $outputPath');
      */
    } finally {
      // Close YouTubeExplode
      yt.close();
    }

    return hlsStream.url.toString();
  }
}

final provider=Provider<GetYouTubeurl>((ref)=>GetYouTubeurl());