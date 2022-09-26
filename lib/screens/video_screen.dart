import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:my_love/widgets/custom_card.dart';
import 'package:my_love/themes/app_theme.dart';

class VideoScreen extends StatefulWidget {
  
  
  const VideoScreen({Key? key,}) : super(key: key);

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {


late YoutubePlayerController _controller;



  @override
  void initState() {
    const url = "https://www.youtube.com/watch?v=ytYO9b6Jyxg";
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,)
      );
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Esta canción te la dedico amor'),
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        onReady: () => debugPrint('Ready'),
        bottomActions: [
          CurrentPosition(),
          ProgressBar(
            isExpanded: true,
            colors: const ProgressBarColors(
              playedColor: AppTheme.primary,
              handleColor: AppTheme.primary,
            ),
          ),
          const PlaybackSpeedButton(),
        ],
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: const [
              CustomCard(pathImage: 'assets/img/corazon.gif', textImage: "Felices cuatro meses amorcito, gracias por todo", heightImage: 400)
            ],
          ),
        )
      ],
    )
  );
  }
}