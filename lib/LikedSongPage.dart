import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget LikedSongCard(String path, String song, String artist) {
  return Container(
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
                image: NetworkImage(path),
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
          const Spacer(),

          const Padding(
            padding: EdgeInsets.only(top: 14, right: 14),
            child: Icon(Icons.favorite, color: Colors.red, size: 25),
          ),
        ],
      ),
    ),
  );
}

class Likedsongpage extends StatelessWidget {
  const Likedsongpage({super.key});

  @override
  Widget build(BuildContext context) {
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

      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 26),
                    child: Container(
                      width: 110,
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          image: AssetImage("images/liked_song.jpg"),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),

                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Liked Songs",
                          style: GoogleFonts.rubik(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "9 liked songs",
                          style: TextStyle(color: Colors.white70, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 35),
              LikedSongCard(
                "https://i.scdn.co/image/ab67616d0000b2731f66d9c6790a9a1a2418ec57",
                "End of Beggining",
                "Djo",
              ),
              const SizedBox(height: 10),
              LikedSongCard(
                "https://i.scdn.co/image/ab67616d0000b2739e1cfc756886ac782e363d79",
                "Let it Happen",
                " Tame Impala",
              ),
              const SizedBox(height: 10),
              LikedSongCard(
                "https://i.scdn.co/image/ab67616d0000b2734bc66095f8a70bc4e6593f4f",
                "Levitating",
                "Dua Lipa ",
              ),

              const SizedBox(height: 10),
              LikedSongCard(
                "https://i.scdn.co/image/ab67616d00001e0243bff43a592efe047d2ab9ff",
                "Good Looking",
                "Suki Waterhouse",
              ),
              const SizedBox(height: 10),
              LikedSongCard(
                "https://i.scdn.co/image/ab67616d0000b273aaa285930cd1623de3eb60c5",
                "Diet Mountain Dew",
                "Lana Del Rey",
              ),
              const SizedBox(height: 10),
              LikedSongCard(
                "https://i.scdn.co/image/ab67616d0000b27317875a0610c23d8946454583",
                "The Night We Met",
                "Lord Huron",
              ),

              const SizedBox(height: 10),
              LikedSongCard(
                "https://i.scdn.co/image/ab67616d0000b2730c8ac83035e9588e8ad34b90",
                "505",
                "Arctic Monkeys",
              ),

              const SizedBox(height: 10),
              LikedSongCard(
                "https://i.scdn.co/image/ab67616d0000b27334f21d3047d85440dfa37f10",
                "My Love Mine All Mine",
                "Mitski",
              ),

              const SizedBox(height: 10),
              LikedSongCard(
                "https://i.scdn.co/image/ab67616d0000b273ab9d1ae18b640b7b0ce390d4",
                "Heat Waves",
                "Glass Animals",
              ),

              const SizedBox(height: 10),
              LikedSongCard(
                "https://i.scdn.co/image/ab67616d0000b27397e971f3e53475091dc8d707",
                "dandelions ",
                "Ruth B.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
