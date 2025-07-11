import 'package:all_projects/Spotify/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

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
                      image: NetworkImage(
                        "https://i.pinimg.com/736x/23/f4/17/23f41766a03fdb7c615ff42398f9255e.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Positioned(
                  bottom: 0,
                  child: Container(
                    width: size.width,
                    height: 900,
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

                Positioned(
                  bottom: 500,
                  left: 130,
                  child: Container(
                    width: 100,
                    height: 150,
                    margin: const EdgeInsets.only(right: 1),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "images/Spotify_White_Logo_Icon_PNG-removebg-preview.png",
                        ),
                      ),
                    ),
                  ),
                ),

                Positioned(
                  bottom: 450,
                  left: 75,
                  child: Column(
                    children: [
                      Text(
                        "Millions of songs\n Free on Spotify",
                        style: GoogleFonts.poppins(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                Positioned(
                  bottom: 80,
                  left: 20,
                  right: 20,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 1),
                        width: 350,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFF1DB954),
                        ),

                        child: Row(
                          children: [
                            const SizedBox(width: 120),
                            Text(
                              "Sign up free",
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 1),
                        width: 350,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent,
                          border: Border.all(
                            color: const Color.fromARGB(255, 47, 44, 44),
                          ),
                        ),

                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            const Icon(
                              Icons.smartphone,
                              color: Colors.white,
                              size: 20,
                            ),
                            const SizedBox(width: 30),
                            Text(
                              "continue with mobile number",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 1),
                        width: 350,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent,
                          border: Border.all(
                            color: const Color.fromARGB(255, 47, 44, 44),
                          ),
                        ),

                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            Container(
                              width: 20,
                              height: 20,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/Google.png"),
                                ),
                              ),
                            ),
                            const SizedBox(width: 50),
                            Text(
                              "Continue with Google",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 1),
                        width: 350,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent,
                          border: Border.all(
                            color: const Color.fromARGB(255, 47, 44, 44),
                          ),
                        ),

                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            Container(
                              width: 25,
                              height: 30,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/facebook-new.png"),
                                ),
                              ),
                            ),
                            const SizedBox(width: 50),
                            Text(
                              "Continue with Facebook",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const SizedBox(width: 70),
                          Text(
                            "Already have an Account ?",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(width: 7),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Loginpage(),
                                ),
                              );
                            },
                            child: Text(
                              "Login",
                              style: GoogleFonts.poppins(
                                color: const Color(0xFF1DB954),
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
