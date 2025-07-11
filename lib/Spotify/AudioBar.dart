import 'package:flutter/material.dart';
import 'package:all_projects/Spotify/audio_manager.dart';

class AudioProgressBar extends StatelessWidget {
  final double? width;
  const AudioProgressBar({super.key, this.width});



  @override
  Widget build(BuildContext context) {
    final totalDuration = GlobalAudioManager.currentDuration ?? Duration.zero;

    return StreamBuilder<Duration>(
      stream: GlobalAudioManager.positionStream,
      builder: (context, snapshot) {
        final currentPosition = snapshot.data ?? Duration.zero;

        return Column(
          children: [
            SizedBox(
              width: width,
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 1,
                  thumbShape: const RoundSliderThumbShape(
                    enabledThumbRadius: 5,
                  ),
                ),
                child: Slider(
                  activeColor: Colors.white,
                  inactiveColor: Colors.white30,
                  min: 0,
                  max: totalDuration.inMilliseconds.toDouble(),
                  value: currentPosition.inMilliseconds
                      .clamp(0, totalDuration.inMilliseconds)
                      .toDouble(),
                  onChanged: (value) {
                    GlobalAudioManager.player.seek(
                      Duration(milliseconds: value.toInt()),
                    );
                  },
                ),
              ),
            ),

          ],
        );
      },
    );
  }
}
