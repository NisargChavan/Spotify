import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Portfoliaaboutscreen extends StatelessWidget {
  const Portfoliaaboutscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(1),
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(top: 17.0),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back_ios, color: Colors.white),
              ),

              const SizedBox(width: 100),
              Text(
                "About",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 36,
                ),
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
              color: Colors.black.withOpacity(0.3),
            ),
          ),

          Positioned(
            
            top: 110,
            left: (size.width - 130) / 2,
            child: Center(
              child: Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: const DecorationImage(
                    image: AssetImage("images/Rectangle 3.png"),
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            top: 250,
            left: 69,
            child: Center(
              child: Text(
                "Nisarg Chavan",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 210,
            left: 30,
            right: 30,
            child: Container(
              padding: const EdgeInsets.all(10),
              width: size.width,
              height: 220,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color(0xFF192531),
                    Color(0xFF1F2A34),
                    Color(0xFF232D37),
                    Color(0xFF313B44),
                    Color(0xFF333D47),
                  ],
                  stops: [0.0, 0.25, 0.5, 0.75, 1.0],
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                'A young and active learner currently building experience as a Mobile Developer. '
                'I have strong analytical thinking, critical thinking, and enjoy sharing ideas.\n\n'
                'Skilled in Android Development with moderate UI design skills. I’m: focused on learning and improving my ability to build quality mobile applications within the Mobile Ecosystem.',
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 14),
              ),
            ),
          ),

          Positioned(
            bottom: 80,
            left: 60,
            child: Container(
              width: 250,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),

              child: Row(
                children: [
                  const SizedBox(width: 50),
                  Text(
                    " Contact Now",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  const Spacer(),
                  const Icon(Icons.arrow_forward, color: Colors.black),
                  const SizedBox(width: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
