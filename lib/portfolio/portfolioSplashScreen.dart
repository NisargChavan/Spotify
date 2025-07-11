import 'package:all_projects/portfolio/portfoliaNavigationScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Portfoliosplashscreen extends StatefulWidget {
  const Portfoliosplashscreen({super.key});

  @override
  State<Portfoliosplashscreen> createState() => _PortfoliosplashscreenState();
}

class _PortfoliosplashscreenState extends State<Portfoliosplashscreen> {

  @override
  void initState() {

    Future.delayed( const Duration(milliseconds: 3000)).then((val) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Portfolianavigationscreen()),
      );
    });

    super.initState();
  }

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
              const Icon(Icons.menu, color: Colors.white),
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
            top: 150,
            child: Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hello , my \nName is Nisarg \nIm an Flutter \nDeveloper ",
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
          ),
        ],
      ),
    );
  }
}
