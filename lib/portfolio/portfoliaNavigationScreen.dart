import 'package:all_projects/portfolio/portfolia_About_Screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Portfolianavigationscreen extends StatelessWidget {
  const Portfolianavigationscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/pi.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.close, color: Colors.white),
              ),
            ],
          ),
        ),
      ),

      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/b2.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              width: size.width,
              height: size.height,
              color: Colors.black.withOpacity(0.5),
            ),
          ),

          Positioned(
            top: 150,
            child: Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Future.delayed(const Duration(milliseconds: 500)).then((val) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Portfoliaaboutscreen(),
                            ),
                          );
                          
                        });
                      },
                      child: Text(
                        "About",
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF00FFC6),
                          fontWeight: FontWeight.w600,
                          fontSize: 36,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Work",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 36,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Service",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 36,
                      ),
                    ),
                    const SizedBox(height: 10),

                    Text(
                      "Contact",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 36,
                      ),
                    ),

                    const SizedBox(height: 70),
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 23,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8Kf5RDxfrmFX93wtlFLIHjc8_Lh1Av17VGg&s",
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 4),

                        Text(
                          "Dribble",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/instaWhite.png"),
                            ),
                          ),
                        ),
                        const SizedBox(width: 4),

                        Text(
                          "Instagram",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
