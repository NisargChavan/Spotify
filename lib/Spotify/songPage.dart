import 'package:all_projects/Spotify/CurrentSongPage.dart';
import 'package:all_projects/Spotify/CurrentlyPlayingState.dart';
import 'package:all_projects/Spotify/NowPlaying.dart';
import 'package:all_projects/Spotify/audio_manager.dart';
import 'package:all_projects/Spotify/fetch.dart';
import 'package:all_projects/Spotify/model/song.dart';
import 'package:all_projects/Spotify/spotify.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:line_icons/line_icons.dart';

class SongListPage extends StatefulWidget {
  const SongListPage({super.key});

  @override
  State<SongListPage> createState() => _SongListPageState();
}

class _SongListPageState extends State<SongListPage> {
  late Future<List<Song>> futureSongs;

  @override
  void initState() {
    super.initState();
    futureSongs = fetchSongs();
    GlobalAudioManager.setupListeners();
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
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset("images/logo.png", width: 35, height: 35),
            const SizedBox(width: 10),
            const Text(
              "Spotify",
              style: TextStyle(
                color: Color.fromARGB(255, 30, 215, 96),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        height: 58,
        color: const Color.fromRGBO(0, 0, 0, 0.8),

        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Spotify()),
                  );
                },
                child: const Icon(Icons.home, color: Colors.grey),
              ),

              const Icon(LineIcons.search, color: Colors.grey),
              const Icon(LineIcons.crown, color: Colors.grey),
              const Icon(LineIcons.plus, color: Colors.grey),
            ],
          ),
        ),
      ),

      body: Stack(

        children: [
          FutureBuilder<List<Song>>(
            future: futureSongs,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text("Error: ${snapshot.error}"));
              } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return const Center(child: Text("No songs found"));
              } else {
                List<Song> allSongs = snapshot.data!;
                
                GlobalAudioManager.setPlaylist(allSongs);
                return ListView(
                  
                  children: allSongs
                      .map((song) => songCardBuilder(song))
                      .toList(),
                );
                
              }
            },
          ),

          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
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
                  child: Icon(Icons.favorite, color: Colors.red, size: 25),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
