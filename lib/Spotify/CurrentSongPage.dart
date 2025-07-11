import 'package:all_projects/Spotify/AudioBar.dart';
import 'package:all_projects/Spotify/CurrentlyPlayingState.dart';
import 'package:all_projects/Spotify/audio_manager.dart';
import 'package:flutter/material.dart';
import 'package:all_projects/Spotify/model/song.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:google_fonts/google_fonts.dart';

class Currentsongpage extends StatefulWidget {
  final Song song;

  const Currentsongpage({super.key, required this.song});

  @override
  State<Currentsongpage> createState() => _CurrentsongpageState();
}

class _CurrentsongpageState extends State<Currentsongpage> {
  void _playPauseSong(song) async {
    GlobalAudioManager.playPause(song);
    setState(() {});
    SongPlayerState.currentlyPlayingSong = song;
  }

  @override
  void initState() {
    super.initState();

    GlobalAudioManager.setupListeners();
  }

  String _formatDuration(Duration d) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(d.inMinutes.remainder(60));
    final seconds = twoDigits(d.inSeconds.remainder(60));
    return "$minutes:$seconds";
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final totalDuration = GlobalAudioManager.currentDuration;

    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: SongPlayerState.currentlyPlayingSongNotifier,
        builder: (context, song, child) {
          if (song == null) {
            return const Center(child: CircularProgressIndicator());
          }

          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: size.width,
                    height: size.height * 0.7,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: CachedNetworkImageProvider(song.image),
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      top: 35.0,
                      left: 20,
                      right: 20,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.expand_more,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),

                        const SizedBox(width: 40),

                        Column(
                          children: [
                            Text(
                              "PLAYING FROM YOUR LIBRARY",
                              style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 12,
                                letterSpacing: 1.3,
                                fontWeight: FontWeight.w500,
                              ),
                            ),

                            Text(
                              "Liked Song",
                              style: GoogleFonts.urbanist(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 40),
                        const Icon(
                          Icons.more_vert_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 264),
                    child: Container(
                      width: size.width,
                      height: 520,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black,
                            Colors.black, // Bottom (solid)
                            Colors.transparent, // Top (faded out)
                          ],
                          stops: [0.4, 0.5, 1],
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    bottom: 260,
                    left: 35,

                    child: Row(
                      children: [
                        Container(
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(song.image),
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              song.title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              song.artist,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const Positioned(
                    bottom: 200,
                    left: 5,
                    right: 5,
                    child: AudioProgressBar(width: 380),
                  ),

                  Positioned(
                    bottom: 192,
                    left: 30,
                    right: 30,
                    child: StreamBuilder<Duration>(
                      stream: GlobalAudioManager.positionStream,

                      builder: (context, snapshot) {
                        final currentPosition = snapshot.data ?? Duration.zero;
                        final totalDuration =
                            GlobalAudioManager.currentDuration ?? Duration.zero;

                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              _formatDuration(currentPosition),
                              style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              _formatDuration(totalDuration),
                              style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsetsGeometry.only(left: 85, top: 590),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            GlobalAudioManager.playPrevSong();
                          },
                          icon: const Icon(
                            Icons.skip_previous,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsetsGeometry.only(right: 1),
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: ValueListenableBuilder(
                              valueListenable:
                                  GlobalAudioManager.isPlayingNotifier,
                              builder: (context, IsPlaying, _) {
                                return IconButton(
                                  onPressed: () => _playPauseSong(song),

                                  icon: Icon(
                                    IsPlaying ? Icons.pause : Icons.play_arrow,
                                    color: Colors.black,
                                    size: 40,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),

                        const SizedBox(width: 20),
                        IconButton(
                          onPressed: () {
                            GlobalAudioManager.playNextSong();
                          },
                          icon: const Icon(
                            Icons.skip_next,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
