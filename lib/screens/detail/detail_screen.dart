import 'package:app_tarea/core/theme/app_theme.dart';
import 'package:app_tarea/screens/detail/detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:audioplayers/audioplayers.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {    
    return GetBuilder<DetailController>(
        init: DetailController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Detail Station"),
            ),
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: "${controller.station.name}",
                  child: Text(
                    "${controller.station.name}",
                    style: const TextStyle(
                      color: AppTheme.pinkText,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text("bitrate: ${controller.station.bitrate}"),
                Text("votes: ${controller.station.votes}"),
                const SizedBox(height: 32),
                GetBuilder<DetailController>(
                    id: 'playPause',
                    builder: (__) {                      
                      return IconButton(
                        icon: Icon((controller.isPlaying)
                            ? Icons.pause
                            : Icons.play_arrow),
                        iconSize: 80,
                        onPressed: () async {
                          if (controller.isPlaying) {
                            await controller.audioPlayer.pause();
                          } else {
                            String url = "${controller.station.url}";
                            await controller.audioPlayer.play(UrlSource(url));
                          }
                          controller.updateIcon();
                        },
                      );
                    }),
              ],
            )),
          );
        });
  }
}
