import 'package:all_projects/Netflix.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PortSplashScreen extends StatefulWidget {
  const PortSplashScreen({super.key});

  @override
  State<PortSplashScreen> createState() => _PortSplashScreenState();
}

class _PortSplashScreenState extends State<PortSplashScreen> {
  @override
  
  void initState() {
    Future.delayed(const Duration(milliseconds: 3000)).then((val) {
      Navigator.pop(context);

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Netflix()),
      );
    });

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Hello , my \nName is Nisarg \nIm an Flutter Developer ",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
