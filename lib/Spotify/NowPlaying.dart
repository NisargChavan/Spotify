// ✅ BEGIN Compact NowPlayingBar

import 'package:all_projects/Spotify/AudioBar.dart';
import 'package:flutter/material.dart';
import 'package:all_projects/Spotify/CurrentlyPlayingState.dart';
import 'package:all_projects/Spotify/audio_manager.dart';
import 'package:all_projects/Spotify/model/song.dart';
import 'package:cached_network_image/cached_network_image.dart';

class NowPlayingBar extends StatefulWidget {
  const NowPlayingBar({super.key});

  @override
  State<NowPlayingBar> createState() => _NowPlayingBarState();
}

class _NowPlayingBarState extends State<NowPlayingBar> {
  @override
  void initState() {
    super.initState();
  }

  void _playPauseSong(Song song) async {
    await GlobalAudioManager.playPause(song);
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Song?>(
      valueListenable: SongPlayerState.currentlyPlayingSongNotifier,
      builder: (context, song, _) {
        if (song == null) return const SizedBox();

        return Container(
          height: 125,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 1),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: CachedNetworkImageProvider(song.image),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5),
                BlendMode.darken,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(song.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            song.title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            song.artist,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),

                    IconButton(
                      onPressed: () {
                        GlobalAudioManager.playPrevSong();
                      },
                      icon: const Icon(
                        Icons.skip_previous,
                        color: Colors.white,
                        size: 22,
                      ),
                    ),

                    ValueListenableBuilder(
                      valueListenable: GlobalAudioManager.isPlayingNotifier,
                      builder: (context, isPlaying, _) {
                        return IconButton(
                          onPressed: () => _playPauseSong(song),
                          icon: Icon(
                            isPlaying ? Icons.pause : Icons.play_arrow,
                            color: Colors.white,
                            size: 26,
                          ),
                        );
                      },
                    ),

                    IconButton(
                      onPressed: () {
                        GlobalAudioManager.playNextSong();
                      },
                      icon: const Icon(
                        Icons.skip_next,
                        color: Colors.white,
                        size: 22,
                      ),
                    ),
                  ],
                ),

                const Padding(
                  padding: EdgeInsets.only(top: 7),
                  child: AudioProgressBar(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

