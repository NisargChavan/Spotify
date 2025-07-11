import 'package:all_projects/Spotify/SpalshScreen.dart';
import 'package:all_projects/portfolio/portfolioSplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:all_projects/Instagram.dart';
import 'package:all_projects/LinkedIn.dart';
import 'package:all_projects/Netflix.dart';
import 'package:all_projects/ProjectManagment.dart';

Widget CardBuilder(String path, String title) {
  return Container(
    height: 90,
    width: 180,
    decoration: BoxDecoration(
      color: const Color(0xFF2A2A2A),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Padding(
      padding: const EdgeInsets.only(
        top: 10.0,
        bottom: 12.0,
        right: 10,
        left: 9,
      ),
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

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Spalshscreen(),
                      ),
                    );
                  },

                  child: CardBuilder("images/logo.png", "Spotify"),
                ),

                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Netflix()),
                    );
                  },

                  child: CardBuilder("images/netflix.png", "Netflix"),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Instagram(),
                      ),
                    );
                  },

                  child: CardBuilder("images/InstaLogo.png", "Instagram"),
                ),

                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Linkedin()),
                    );
                  },

                  child: CardBuilder("images/LinkedIn.png", "LinkedIn"),
                ),

                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Projectmanagment(),
                      ),
                    );
                  },

                  child: CardBuilder(
                    "images/undraw_typing-code_6t2b-removebg-preview (1).png",
                    "Project \nManagment",
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Portfoliosplashscreen(),
                      ),
                    );
                  },

                  child: CardBuilder(
                    "images/undraw_typing-code_6t2b-removebg-preview (1).png",
                    "List View",
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
