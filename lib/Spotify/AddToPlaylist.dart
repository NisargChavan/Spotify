import 'package:all_projects/Spotify/fetch.dart';
import 'package:all_projects/Spotify/model/song.dart';
import 'package:flutter/material.dart';

class Addtoplaylist extends StatefulWidget {
  const Addtoplaylist({super.key});

  @override
  State<Addtoplaylist> createState() => _AddToplayListState();
}

class _AddToplayListState extends State<Addtoplaylist> {
  late Future<List<Song>> futureSongs;
  @override
  void initState() {
    super.initState();
    futureSongs = fetchSongs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FutureBuilder<List<Song>>(
            future: futureSongs,
            builder: (context, snapshot) {
              List<Song> allsongs = snapshot.data ?? [];
              return Expanded(
                child: ListView(
                  children: (allsongs..shuffle())
                      .take(2)
                      .map((song) => SongCard(song))
                      .toList(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget SongCard(Song song) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: NetworkImage(song.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
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
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
