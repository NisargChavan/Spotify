import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget Banner(String url) {
  return Container(
    height: 440,
    width: 400,
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      image: DecorationImage(
        image: NetworkImage(url),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
          Colors.black.withOpacity(0.2),
          BlendMode.darken,
        ),
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsetsGeometry.symmetric(
                  horizontal: 10,
                  vertical: 20,
                ),
                child: Container(
                  width: 110,
                  height: 30,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/bglogo-removebg-preview.png"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 1),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                width: 45,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(255, 232, 77, 85),
                ),
                child: NText("All"),
              ),
              const SizedBox(width: 25),
              NText("Shows"),
              const SizedBox(width: 25),
              NText("Movies"),
              const SizedBox(width: 25),
              NText("Anime"),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget NText(String text) {
  return Text(
    text,
    style: GoogleFonts.poppins(
      color: Colors.white,
      fontWeight: FontWeight.w300,
      fontSize: 14,
    ),
  );
}

Widget TrendingCrad(String url) {
  return Container(
    width: 210,
    height: 240,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      image: DecorationImage(image: NetworkImage(url), fit: BoxFit.cover),
    ),
  );
}

Widget ContinueWatching(String url) {
  return Container(
    width: 210,
    height: 300,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      image: DecorationImage(image: NetworkImage(url), fit: BoxFit.cover),
    ),
    child: Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.all(13),
        child: Icon(
          Icons.play_circle_fill_rounded,
          color: const Color.fromARGB(255, 246, 15, 27).withOpacity(0.9),
          size: 47,
        ),
      ),
    ),
  );
}

//
//
//
//
//
class Netflix extends StatelessWidget {
  const Netflix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: const BottomAppBar(
        height: 54,
        color: Color.fromRGBO(0, 0, 0, 0.6),

        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.home, color: Color(0xFFE50914)),
              Icon(Icons.search, color: Colors.grey),
              Icon(Icons.add, color: Colors.grey),
              Icon(Icons.favorite, color: Colors.grey),
              Icon(Icons.account_circle, color: Colors.grey),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xFF111111),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Banner(
                          "https://img10.hotstar.com/image/upload/f_auto,q_90,w_1700/sources/r1/cms/prod/8870/1742211508870-v",
                        ),
                        Banner(
                          "https://img10.hotstar.com/image/upload/f_auto,q_90,w_1700/sources/r1/cms/prod/1640/1741762961640-v",
                        ),
                        Banner(
                          "https://img10.hotstar.com/image/upload/f_auto,q_90,w_1700/sources/r1/cms/prod/7687/1739443677687-v",
                        ),
                        Banner(
                          "https://img10.hotstar.com/image/upload/f_auto,q_90,w_384/sources/r1/cms/prod/5620/1737370455620-v",
                        ),
                        Banner(
                          "https://img10.hotstar.com/image/upload/f_auto,q_90,w_3200/sources/r1/cms/prod/7517/1097517-v-6eb5ec07c99b",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 10),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          Icon(
                            Icons.check_circle_outline,
                            color: Colors.white,
                            size: 24,
                          ),
                          Text(
                            "My List",
                            style: TextStyle(color: Colors.white38),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 27),
                    Container(
                      width: 140,
                      height: 50,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 13,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),

                        color: Colors.white,
                      ),
                      child: Text(
                        "Stream Now",
                        style: GoogleFonts.russoOne(
                          fontSize: 17,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ),
                    const SizedBox(width: 29),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          Icon(Icons.info, color: Colors.white, size: 24),
                          Text("Info", style: TextStyle(color: Colors.white38)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 29),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Trending Now",
                  style: GoogleFonts.russoOne(
                    fontSize: 23,
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,

              child: Row(
                children: [
                  const SizedBox(width: 10),
                  TrendingCrad(
                    "https://img10.hotstar.com/image/upload/f_auto,q_90,w_384/sources/r1/cms/prod/486/1747141090486-v",
                  ),
                  const SizedBox(width: 10),
                  TrendingCrad(
                    "https://img10.hotstar.com/image/upload/f_auto,q_90,w_384/sources/r1/cms/prod/9004/1739491709004-v",
                  ),
                  const SizedBox(width: 10),
                  TrendingCrad(
                    "https://img10.hotstar.com/image/upload/f_auto,q_90,w_384/sources/r1/cms/prod/2943/1052943-v-7ab0eaf5867b",
                  ),
                  const SizedBox(width: 10),
                  TrendingCrad(
                    "https://m.media-amazon.com/images/I/816AbVQc+0L.jpg",
                  ),
                  const SizedBox(width: 10),
                  TrendingCrad(
                    "https://img10.hotstar.com/image/upload/f_auto,q_90,w_384/sources/r1/cms/prod/3070/1748862443070-v",
                  ),
                  const SizedBox(width: 10),
                  TrendingCrad(
                    "https://img10.hotstar.com/image/upload/f_auto,q_90,w_3204/sources/r1/cms/prod/9318/1738665049318-v",
                  ),
                  const SizedBox(width: 10),
                  TrendingCrad(
                    "https://img10.hotstar.com/image/upload/f_auto,q_90,w_1004/sources/r1/cms/prod/4672/1734431474672-v",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Continue Watching",
                  style: GoogleFonts.russoOne(
                    fontSize: 23,
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  ContinueWatching(
                    "https://img10.hotstar.com/image/upload/f_auto,q_90,w_1000/sources/r1/cms/prod/9243/1747053649243-v",
                  ),
                  const SizedBox(width: 10),
                  ContinueWatching(
                    "https://img10.hotstar.com/image/upload/f_auto,q_90,w_1000/sources/r1/cms/prod/8059/1368059-i-bbcefdfda4e4",
                  ),

                  const SizedBox(width: 10),
                  ContinueWatching(
                    "https://img10.hotstar.com/image/upload/f_auto,q_90,w_1000/sources/r1/cms/prod/9135/1734428689135-v",
                  ),

                  const SizedBox(width: 10),
                  ContinueWatching(
                    "https://img10.hotstar.com/image/upload/f_auto,q_90,w_384/sources/r1/cms/prod/4924/1734078584924-v",
                  ),
                  const SizedBox(width: 10),
                  ContinueWatching(
                    "https://img10.hotstar.com/image/upload/f_auto,q_90,w_1000/sources/r1/cms/prod/1323/1744908071323-v",
                  ),
                  const SizedBox(width: 10),
                  ContinueWatching(
                    "https://img10.hotstar.com/image/upload/f_auto,q_90,w_1000/sources/r1/cms/prod/5866/1738057635866-v",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
