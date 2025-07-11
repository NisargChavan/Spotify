import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:all_projects/Spotify/spotify.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 60),
              child: Row(
                children: [
                  Image.asset("images/logo.png", width: 35, height: 35),
                  const SizedBox(width: 10),

                  Text(
                    "Spotify",
                    style: GoogleFonts.rubik(
                      color: const Color.fromARGB(255, 30, 215, 96),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 90, width: 10),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Sign In",
                style: GoogleFonts.rubik(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 17),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Having Trouble Signing In ?',
                  style: GoogleFonts.outfit(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 3),
                Text(
                  'click here',
                  style: GoogleFonts.outfit(
                    fontSize: 11,

                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(255, 30, 215, 96).withOpacity(0.6),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 350,

              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 26),

                  fillColor: Colors.transparent,
                  hintText: "Username",
                  hintStyle: const TextStyle(color: Colors.white),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 30, 215, 96).withOpacity(0.6),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 350,

              child: TextField(
                style: const TextStyle(color: Colors.white),

                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 26),
                  fillColor: Colors.transparent,
                  hintText: "Password",
                  hintStyle: const TextStyle(color: Colors.white),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 30, 215, 96).withOpacity(0.6),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 45),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Forgot Password?',
                  style: GoogleFonts.outfit(
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 40),

            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Spotify()),
                );
              },

              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                backgroundColor: const Color.fromARGB(255, 30, 215, 96),
                side: BorderSide.none,
              ),

              child: Text(
                'Sign In',
                style: GoogleFonts.rubik(fontSize: 20, color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),

            const Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.3,
                    endIndent: 15,
                  ),
                ),

                Text('OR', style: TextStyle(color: Colors.white, fontSize: 13)),
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.3,
                    indent: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDy_BNkPSR9l2X5I074rtb6j-z-i2Iz2yblw&s",
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 60),
                Container(
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("images/Google.png"),
                    ),
                  ),
                ),
                const SizedBox(width: 60),
                Container(
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("images/appelLogo.png"),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not A Memeber ? ",
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 3),
                Text(
                  'Register',
                  style: GoogleFonts.roboto(
                    fontSize: 14,

                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(255, 30, 215, 96).withOpacity(0.6),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
