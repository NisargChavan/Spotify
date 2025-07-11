import 'package:all_projects/Spotify/Onboarding.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Spalshscreen extends StatelessWidget {
  const Spalshscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  width: size.width,
                  height: size.height * 1,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/Wall Decorations (1).jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Positioned(
                  bottom: 0,
                  child: Container(
                    width: size.width,
                    height: 660,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black,
                          Colors.black.withOpacity(0.9), // Bottom (solid)
                          Colors.transparent, // Top (faded out)
                        ],
                        stops: const [0.1, 0.5, 1],
                      ),
                    ),
                  ),
                ),

                Center(
                  child: Container(
                    width: 150,
                    height: 150,
                    margin: const EdgeInsets.only(right: 1),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "images/png-transparent-spotify-logo-logo-spotify-issuu-soundcloud-spotify-logo-white-text-logo-thumbnail-removebg-preview.png",
                        ),
                      ),
                    ),
                  ),
                ),

                Positioned(
                  bottom: 210,
                  left: 40,
                  right: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Millions of songs on Spotify",
                        style: GoogleFonts.poppins(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 17.0),
                        child: Text(
                          "Your music, your vibe",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 17.0),
                        child: Text(
                          "Listen to millions of songs for free. Discover new artists, build \n   playlists, and enjoy music anytime, anywhere, your way.",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Positioned(
                  bottom: 90,
                  left: 70,
                  right: 70,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Onboarding()),
                      );
                    },
                    child: Container(
                      width: 250,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        // color: Colors.transparent,
                        // border: Border.all(color: Colors.white),
                      ),

                      child: Row(
                        children: [
                          const SizedBox(width: 70),
                          Text(
                            "Get Started ",
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Spacer(),
                          const Icon(Icons.arrow_forward, color: Colors.black),
                          const SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
