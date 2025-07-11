import 'package:all_projects/Spotify/ArtistPageWeeknd.dart';
import 'package:all_projects/Spotify/CurrentSongPage.dart';
import 'package:all_projects/Spotify/CurrentlyPlayingState.dart';
import 'package:all_projects/Spotify/NowPlaying.dart';
import 'package:all_projects/Spotify/audio_manager.dart';
import 'package:all_projects/Spotify/songPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:cached_network_image/cached_network_image.dart';

Widget CardBuilder(String path, String title) {
  return Container(
    height: 70,
    width: 170,
    decoration: BoxDecoration(
      color: const Color(0xFF2A2A2A),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 12.0, left: 9),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(path),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Flexible(
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),

              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget SongCard(String path, String song, String artits) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        height: 200,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: CachedNetworkImageProvider(path),
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
              song,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              artits,
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

Widget TopArtist(String path) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        height: 110,
        width: 110,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: CachedNetworkImageProvider(path),
            fit: BoxFit.cover,
          ),
        ),
      ),
    ],
  );
}

Widget BestAlbum(String path) {
  return Container(
    width: 310,
    height: 275,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      image: DecorationImage(
        image: CachedNetworkImageProvider(path),
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget RecentlyPlayed(String path, String song, String artist) {
  return Container(
    width: 350,
    height: 80,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: const Color(0xFF444444).withOpacity(0.3),
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
                image: CachedNetworkImageProvider(path),
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
                  song,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  artist,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

//
//
//
//
//
//
class Spotify extends StatefulWidget {
  const Spotify({super.key});

  @override
  State<Spotify> createState() => _spotifyState();
}

class _spotifyState extends State<Spotify> {
  @override
  void initState() {
    super.initState();
    GlobalAudioManager.setupListeners();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void reassemble() {
    super.reassemble();
    GlobalAudioManager.player.pause();
  }

  @override
  Widget build(BuildContext context) {
    List<String> ATPsongImages = [
      "https://i.scdn.co/image/ab67616d0000b273f7db43292a6a99b21b51d5b4",
      "https://i.scdn.co/image/ab67616d0000b273b47d309281c66820b7137f5d",
      "https://i.scdn.co/image/ab67616d0000b273373c63a4666fb7193febc167",
      "https://i.scdn.co/image/ab67616d0000b2738863bc11d2aa12b54f5aeb36",
      "https://i.scdn.co/image/ab67616d0000b27382ea2e9e1858aa012c57cd45",
      "https://i.scdn.co/image/ab67616d0000b2734718e2b124f79258be7bc452",
    ];

    List<String> AtpsongNames = [
      "Wasted",
      "Little Dark Age",
      "Blue",
      "Blinding Lights",
      "Die with a smile",
      "Starboy",
    ];

    List<String> AtpartistNames = [
      "juice WRLD",
      "MGMT",
      "Yung Kai",
      "The Weeknd",
      "Bruno Mars",
      "The Weeknd",
    ];

    List<String> topArtistImages = [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVI_rKTQkW3-OcL-iv9nuQU3nkoury7t_m2A&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSiI2-PFuJHUOZCA0SiLNVwyCPOXDelTX9Zr3KscqiZwWNBTQDcnDhOCmtEMoDJrQIz04&usqp=CAU",
      "https://i.scdn.co/image/ab6761610000e5ebd5594e3ae145bbb2c096366d",
      "https://cf-img-a-in.tosshub.com/sites/visualstory/wp/2024/09/arijit-singh-6.jpg?size=*:900",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRt6COph5ht2ATv_e9MPsOezkQBhddE7ZkDoQ&s",
      "https://m.media-amazon.com/images/I/619sk-bZaQL._UF1000,1000_QL80_.jpg",
    ];

    List<String> newReleaseImages = [
      "https://i.scdn.co/image/ab67616d0000b27336032cb4acd9df050bc2e197",
      "https://upload.wikimedia.org/wikipedia/en/6/63/Steve_Lacy_-_Bad_Habit.png",
      "https://i.scdn.co/image/ab67616d0000b273982320da137d0de34410df61",
      "https://i.scdn.co/image/ab67616d0000b273fddfffec51b4580acae727c1",
      "https://i.scdn.co/image/ab67616d0000b2739b6ac98a52f62d5cb473da40",
      "https://i.scdn.co/image/ab67616d0000b27397e971f3e53475091dc8d707",
    ];

    List<String> newReleaseTitles = [
      "APT",
      "Bad Habit",
      "Cry For Me",
      "End of Beginning",
      "Softcore",
      "Dandelions",
    ];

    List<String> newReleaseArtists = [
      "Rose",
      "Steve Lacy",
      "The Weeknd",
      "Djo",
      "The Neighbourhood",
      "Ruth B.",
    ];

    List<String> bestAlbumImages = [
      "https://m.media-amazon.com/images/I/71j5det6NjL._UF1000,1000_QL80_.jpg",
      "https://i.scdn.co/image/ab67616d0000b27317875a0610c23d8946454583",
      "https://i.scdn.co/image/ab67616d0000b27371d62ea7ea8a5be92d3c1f62",
      "https://i.scdn.co/image/ab67616d0000b2738265a736a1eb838ad5a0b921",
      "https://cdn-images.dzcdn.net/images/cover/64e54e307bd5e2bdb27ffeb662fd910d/500x500.jpg",
    ];

    List<String> recentlyPlayedImages = [
      "https://i.scdn.co/image/ab67616d0000b2731f66d9c6790a9a1a2418ec57",
      "https://i.scdn.co/image/ab67616d0000b2739e1cfc756886ac782e363d79",
      "https://i.scdn.co/image/ab67616d0000b2734bc66095f8a70bc4e6593f4f",
      "https://i.scdn.co/image/ab67616d00001e0243bff43a592efe047d2ab9ff",
      "https://i.scdn.co/image/ab67616d0000b273aaa285930cd1623de3eb60c5",
    ];

    List<String> recentlyPlayedTitles = [
      "End of Beggining",
      "Let it Happen",
      "Levitating",
      "Good Looking",
      "Diet Mountain Dew",
    ];

    List<String> recentlyPlayedArtists = [
      "Djo",
      "Tame Impala",
      "Dua Lipa",
      "Suki Waterhouse",
      "Lana Del Rey",
    ];

    return Scaffold(
      extendBody: true,
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

      bottomNavigationBar: const BottomAppBar(
        height: 50,
        color: Color.fromRGBO(0, 0, 0, 0.8),

        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.home, color: Color.fromARGB(255, 30, 215, 96)),
              Icon(LineIcons.search, color: Colors.grey),
              Icon(LineIcons.plus, color: Colors.grey),
              Icon(LineIcons.user, color: Colors.grey),
            ],
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.only(left: 5.0, right: 5.0),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        const TopNavBar(),

                        const liked_playlist(),

                        const SizedBox(height: 20),
                        const weeknd_travis(),
                        const SizedBox(height: 25),

                        Padding(
                          padding: const EdgeInsets.only(right: 170),

                          child: Text(
                            "Add  to Your Playlist",
                            style: GoogleFonts.publicSans(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),

                        SizedBox(
                          height: 250,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: AtpsongNames.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: SongCard(
                                  ATPsongImages[index],
                                  AtpsongNames[index],
                                  AtpartistNames[index],
                                ),
                              );
                            },
                          ),
                        ),

                        const SizedBox(height: 25),

                        Padding(
                          padding: const EdgeInsets.only(right: 270),

                          child: Text(
                            "Top Artist",
                            style: GoogleFonts.publicSans(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const SizedBox(height: 25),

                        SizedBox(
                          height: 140,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: topArtistImages.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: TopArtist(topArtistImages[index]),
                              );
                            },
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(right: 230),

                          child: Text(
                            "New Release",
                            style: GoogleFonts.publicSans(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        SizedBox(
                          height: 250,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: newReleaseArtists.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: SongCard(
                                  newReleaseImages[index],
                                  newReleaseTitles[index],
                                  newReleaseArtists[index],
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 25),

                        Padding(
                          padding: const EdgeInsets.only(right: 230),

                          child: Text(
                            "Top Albums",
                            style: GoogleFonts.publicSans(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),
                        SizedBox(
                          height: 300,
                          child: ListView.builder(
                            itemCount: bestAlbumImages.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: BestAlbum(bestAlbumImages[index]),
                              );
                            },
                          ),
                        ),

                        const SizedBox(height: 25),
                        Padding(
                          padding: const EdgeInsets.only(right: 170),

                          child: Text(
                            "Recently  Played",
                            style: GoogleFonts.publicSans(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),

                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: recentlyPlayedArtists.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RecentlyPlayed(
                                recentlyPlayedImages[index],
                                recentlyPlayedTitles[index],
                                recentlyPlayedArtists[index],
                              ),
                            );
                          },
                        ),

                        const SizedBox(height: 20),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                final current = SongPlayerState.currentlyPlayingSong!;

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Currentsongpage(song: current),
                  ),
                );
              },
              child: const Padding(
                padding: EdgeInsetsGeometry.only(top: 520),
                child: NowPlayingBar(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class weeknd_travis extends StatelessWidget {
  const weeknd_travis({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0, left: 10),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ArtistPage()),
              );
            },

            child: CardBuilder("images/so perfect.jpg", "Lana del Rey"),
          ),
          const SizedBox(width: 10),

          CardBuilder("images/Travis.png", "Travis Scott"),
        ],
      ),
    );
  }
}

class liked_playlist extends StatelessWidget {
  const liked_playlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0, left: 10),
      child: Row(
        children: [
          const SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SongListPage()),
              );
            },

            child: CardBuilder("images/liked_song.jpg", "Liked songs"),
          ),
          const SizedBox(width: 10),

          CardBuilder("images/playlist.jpg", "Playlist "),
        ],
      ),
    );
  }
}


class TopNavBar extends StatelessWidget {
  const TopNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(width: 10),
        Padding(
          padding: const EdgeInsets.only(top: 1, bottom: 20),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image: const DecorationImage(
                image: CachedNetworkImageProvider(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn8sc1jVFdyMA-RTBUBhmFcpGbGIA4WOrOfw&s",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(width: 15),
        Padding(
          padding: const EdgeInsets.only(top: 5),

          child: Container(
            width: 99,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFF444444),
            ),

            child: const Center(
              child: Text("Music", style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Padding(
          padding: const EdgeInsets.only(top: 5),

          child: Container(
            width: 99,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFF444444),
            ),

            child: const Center(
              child: Text("Podcast", style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
      ],
    );
  }
}
