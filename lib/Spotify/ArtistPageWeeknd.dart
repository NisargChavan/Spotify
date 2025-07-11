import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:all_projects/Spotify/model/song.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:all_projects/Spotify/CurrentSongPage.dart';
import 'package:all_projects/Spotify/CurrentlyPlayingState.dart';
import 'package:all_projects/Spotify/NowPlaying.dart';
import 'package:all_projects/Spotify/audio_manager.dart';

class ArtistPage extends StatefulWidget {
  const ArtistPage({super.key});

  @override
  State<ArtistPage> createState() => _ArtistPageState();
}

class _ArtistPageState extends State<ArtistPage> {
  late Future<List<Song>> futureSongs;

  @override
  void initState() {
    super.initState();
    futureSongs = ArtistSongFetch();
    GlobalAudioManager.setupListeners();
  }

  @override
  Future<List<Song>> ArtistSongFetch() async {
    const ngrokBase =
        "https://e396c44ff693.ngrok-free.app";

    final response = await http.get(
      Uri.parse("$ngrokBase/artist/Lana del rey"),
    );

    if (response.statusCode == 200) {
      final List jsonData = json.decode(response.body);

      List<Song> songs = jsonData.map((item) {
        item['image'] = item['image'].replaceAll(
          "http://localhost:8080",
          ngrokBase,
        );
        item['audio'] = item['audio'].replaceAll(
          "http://localhost:8080",
          ngrokBase,
        );

        return Song.fromJson(item);
      }).toList();

      return songs;
    } else {
      throw Exception("song fateching failed ${response.statusCode}");
    }
  }

  Future<void> _playPauseSong(Song song) async {
    await GlobalAudioManager.playPause(song);
    if (mounted) {
      setState(() {
        SongPlayerState.currentlyPlayingSong = song;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(width: size.width, height: size.height),

            Container(
              width: size.width,
              height: size.height * 0.80,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://i.pinimg.com/736x/b9/ed/a1/b9eda196f6e8dfd50187960296974e85.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Positioned(
              top: 40,
              left: 30,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back_ios, color: Colors.white),
                    ),
                    const SizedBox(width: 250),
                    const Icon(Icons.favorite_border, color: Colors.white),
                    const SizedBox(width: 10),
                    const Icon(Icons.more_horiz, color: Colors.white),
                  ],
                ),
              ),
            ),

            const Positioned(
              top: 80,
              left: 30,
              child: Text(
                'Lana del Rey',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Positioned(
              left: 30,
              top: 160,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 28,
                      vertical: 10,
                    ),
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Music",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),

                  Text(
                    "Related",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 30),
                  Text(
                    "About",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              top: 240,
              left: 30,
              child: Row(
                children: [
                  Text(
                    "Top Songs",
                    style: GoogleFonts.poppins(
                      fontSize: 26,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 120),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),

                    child: const Icon(
                      Icons.play_arrow,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: size.width,
                height: 620,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black,
                      Colors.black.withOpacity(0.9),
                      Colors.transparent,
                    ],
                    stops: const [0.1, 0.5, 1],
                  ),
                ),
              ),
            ),

            Positioned(
              top: 284,
              left: 20,
              right: 20,

              child: FutureBuilder<List<Song>>(
                future: futureSongs,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (!snapshot.hasData ||
                      snapshot.data == null ||
                      snapshot.data!.isEmpty) {
                    return const Center(
                      child: Text(
                        "No songs found",
                        style: TextStyle(color: Colors.white),
                      ),
                    );
                  }
                  List<Song> allSongs = snapshot.data!;
                  GlobalAudioManager.setPlaylist(allSongs);

                  return ListView(
                    shrinkWrap: true,

                    children: allSongs
                        .map((song) => songCardBuilder(song))
                        .toList(),
                  );
                },
              ),
            ),

            Positioned(
              bottom: 80,
              left: 20,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  final current = SongPlayerState.currentlyPlayingSong!;

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Currentsongpage(song: current),
                    ),
                  );
                },
                child: const NowPlayingBar(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget songCardBuilder(Song song) {

    return GestureDetector(
      onTap: () async {
        await _playPauseSong(song);
        if (mounted) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Currentsongpage(song: song),
            ),
          );
        }
      },
      child: GestureDetector(
        child: Container(
          width: 400,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xFF444444).withOpacity(0.1),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              bottom: 12.0,
              right: 10,
              left: 9,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(song.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.only(top: 9, left: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        song.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        song.artist,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.only(top: 14, right: 14),
                  child: Icon(Icons.more_horiz, color: Colors.white, size: 25),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget songCardBuilder(Song song) {
  //   return GestureDetector(
  //     child: Container(
  //       width: 400,
  //       height: 80,
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(20),
  //         color: Colors.transparent,
  //       ),
  //       child: Padding(
  //         padding: const EdgeInsets.only(
  //           top: 10.0,
  //           bottom: 12.0,
  //           right: 10,
  //           left: 9,
  //         ),
  //         child: Row(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Container(
  //               width: 60,
  //               height: 60,
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(12),
  //                 image: DecorationImage(
  //                   image: CachedNetworkImageProvider(song.image),
  //                   fit: BoxFit.cover,
  //                 ),
  //               ),
  //             ),
  //             const SizedBox(width: 10),
  //             Padding(
  //               padding: const EdgeInsets.only(top: 9, left: 4),
  //               child: Column(
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   Text(
  //                     song.title,
  //                     style: const TextStyle(
  //                       color: Colors.white,
  //                       fontWeight: FontWeight.bold,
  //                     ),
  //                   ),
  //                   Text(
  //                     song.artist,
  //                     style: const TextStyle(
  //                       color: Colors.white,
  //                       fontWeight: FontWeight.w300,
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //             const Spacer(),
  //             const Padding(
  //               padding: EdgeInsets.only(top: 14, right: 14),
  //               child: Icon(
  //                 Icons.more_horiz,
  //                 color: Color.fromARGB(255, 255, 255, 255),
  //                 size: 25,
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
