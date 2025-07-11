import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';
import 'package:cached_network_image/cached_network_image.dart';

Widget StoryBuilder(String url, String Name) {
  return Column(
    children: [
      Container(
        width: 85,
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.pinkAccent,
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.2),
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(53),
              image: DecorationImage(
                image: CachedNetworkImageProvider(url),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
      const SizedBox(height: 7),
      Text(Name, style: const TextStyle(color: Colors.white54)),
    ],
  );
}

Widget CardBuilder(
  final String username,
  final String ProfileImage,
  final String PostImage,
  final String song,
) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 17),
        child: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: CachedNetworkImageProvider(ProfileImage),
                ),
              ),
            ),
            const SizedBox(width: 12),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 1),
                  child: Text(
                    username,
                    style: GoogleFonts.merriweather(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),

                Row(
                  children: [
                    const Icon(
                      Icons.music_note_sharp,
                      color: Colors.white,
                      size: 17,
                    ),
                    const SizedBox(width: 2),
                    Text(
                      song,
                      style: GoogleFonts.roboto(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),

            Padding(
              padding: const EdgeInsets.only(right: 20),

              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 11,
                  vertical: 5,
                ),
                width: 90,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: Colors.white),
                ),
                child: const Text(
                  "Following",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            const Icon(Icons.more_vert, color: Colors.white),
          ],
        ),
      ),
      const SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          width: double.infinity,
          height: 475,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(19),
            image: DecorationImage(
              image: CachedNetworkImageProvider(PostImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      const SizedBox(height: 10),
      const Padding(
        padding: EdgeInsets.only(left: 20, top: 10),
        child: Row(
          children: [
            Icon(Icons.favorite_outline, color: Colors.white, size: 28),
            SizedBox(width: 2),
            Text("43.9K", style: TextStyle(color: Colors.white, fontSize: 14)),
            SizedBox(width: 18),
            Icon(FontAwesomeIcons.comment, color: Colors.white, size: 24),
            SizedBox(width: 2),
            Text("4.9K", style: TextStyle(color: Colors.white, fontSize: 14)),
            SizedBox(width: 18),
            Icon(FontAwesomeIcons.paperPlane, size: 24, color: Colors.white),
            SizedBox(width: 2),
            Text("15.5K", style: TextStyle(color: Colors.white, fontSize: 14)),

            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 19),
              child: Icon(
                Icons.bookmark_outline,
                color: Colors.white,
                size: 28,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget SuggestedForYou(String image, String name) {
  return Container(
    padding: const EdgeInsets.only(top: 25),
    width: 260,
    height: 301,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: const Color.fromARGB(255, 20, 20, 20),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: CachedNetworkImageProvider(image),
              fit: BoxFit.contain,
            ),
          ),
        ),

        const SizedBox(height: 20),
        Text(
          name,
          style: GoogleFonts.sora(
            fontSize: 15,
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),

        const SizedBox(height: 20),

        Container(
          width: 120,
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.blueAccent,
          ),
          child: Text(
            "Follow",
            style: GoogleFonts.quicksand(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    ),
  );
}

class Instagram extends StatelessWidget {
  const Instagram({super.key});

  @override
  Widget build(BuildContext context) {
   
    List<String> PostImages = [
      "https://i.pinimg.com/736x/28/59/87/2859877b7696f197a3cbda858b40bc3c.jpg",
      "https://i.pinimg.com/736x/58/45/60/584560fc6c7447524f215a199f67db44.jpg",
      "https://img10.hotstar.com/image/upload/f_auto,q_90,w_1000/sources/r1/cms/prod/8654/1739443648654-i",
      "https://i.pinimg.com/736x/a0/19/b6/a019b667ac6f65666a135d3dde97197a.jpg",
      "https://i.pinimg.com/736x/51/1b/69/511b6971432c212aa026aed3b4b2b41a.jpg",
      "https://i.pinimg.com/736x/ca/77/3e/ca773e84bf31302d789e7f98607c24e2.jpg",
    ];

    List<String> PostProfile = [
      "https://i.pinimg.com/736x/c2/b6/73/c2b6731f14ed4bcce29312dbbf858f71.jpg",
      "https://i.pinimg.com/736x/a5/6a/70/a56a7081e5bc7465c2ef5b6fa2b6cd87.jpg",
      "https://play-lh.googleusercontent.com/vcqCewpMTNhNhV2IrGWO-N0DZ-NmQ3RaeAMYoZz65_J8ivwIzsR71HBQ63oQqP9PPNE",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQU0Hp4CF76EHYsXWgQAIuO__BAABo4LAlA6Jq_JFNEkO76J5vTP2DSaw-6c5RAurOHp2U&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-yaRGKiVTberksOZcwmeZVGe3tujrvEaprg&s",
      "https://m.media-amazon.com/images/I/41o03HyOYlL.png",
    ];

    List<String> PostAccountName = [
      "Bleach",
      "Malenia",
      "Hotstar",
      "MAPPA",
      "Porsche",
      "Crunchyroll",
    ];

    List<String> PostSongName = [
      "Sweater Weather",
      "Blade of Miquella",
      "Let it Happen",
      "Little Dark age",
      "Slow Motion",
      "The Brave",
    ];

    List<String> Storyimage = [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_M6AfsiJO-7asG8xK6tqicCeZ4Su58EDTgw&s",
      "https://m.media-amazon.com/images/I/71j5det6NjL._UF1000,1000_QL80_.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRckF_lEqWc1mEsWqtb46GOy6BtiiU2o3gjVA&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtRoCys5Svhh7vdNCdty3cSmKygjpEGf2F-Q&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXWZUb32QfzUdNxnQqSkCxfxiTOjoWBZOy3w&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVkqcU93uwdnxyAwbq_ML7gCJO_Y-LUUUpYQ&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQg4amdXNJf1KnjNmqsg9cGTe049sPGRnX0oA&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUUbfRnpttbm-_qDWsSvGpf1JL1ryqr59XaQ&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBag67DFIUFcycU2waNXMXLW5pP-SxCOpfrQ&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSf-wWabLeVngx8BcsBS7NPDcZc5bOxbqr4Bg&s",
    ];

    List<String> Storyname = [
      "Walter",
      "Charlie",
      "Travis",
      "Frieren ",
      "Weeknd",
      "Sword",
      "Aki",
      "Elden",
      "Ryan",
      "Yoru",
    ];

    return Scaffold(
      extendBody: true,

      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Text(
              "Instagram",
              style: GoogleFonts.pacifico(
                color: Colors.white,
                fontSize: 27,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 22, top: 6),
            child: Icon(
              Icons.favorite_border_outlined,
              size: 30,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 1),
          Padding(
            padding: EdgeInsets.only(right: 10, top: 6),
            child: Icon(Icons.message_rounded, size: 28, color: Colors.white),
          ),
        ],
      ),

      bottomNavigationBar: const BottomAppBar(
        height: 54,
        color: Color.fromRGBO(0, 0, 0, 0.6),

        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.home, color: Colors.white),
              Icon(Icons.search, color: Colors.grey),
              Icon(LineIcons.plus, color: Colors.grey),
              Icon(Icons.camera, size: 26, color: Colors.grey),
              Icon(Icons.account_circle_outlined, color: Colors.grey),
            ],
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 120,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: Storyimage.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: StoryBuilder(Storyimage[index], Storyname[index]),
                  );
                },
              ),
            ),

            const SizedBox(height: 29),

            Padding(
              padding: const EdgeInsets.only(top: 1),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 0),
                    child: CardBuilder(
                      PostAccountName[index],
                      PostProfile[index],
                      PostImages[index],
                      PostSongName[index],
                    ),
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 7),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Suggested For you",
                  style: GoogleFonts.sora(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            const SuggestForYou_Section(),

            const SizedBox(height: 29),

            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 2,

              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: CardBuilder(
                    PostAccountName[PostAccountName.length - 2 + index],
                    PostProfile[PostProfile.length - 2 + index],
                    PostImages[PostImages.length - 2 + index],
                    PostSongName[PostSongName.length - 2 + index],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SuggestForYou_Section extends StatelessWidget {
  const SuggestForYou_Section({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 1),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(width: 6),
            SuggestedForYou(
              "https://i.scdn.co/image/ab67616100005174b99cacf8acd5378206767261",
              "Lana Del Rey",
            ),
            const SizedBox(width: 6),
            SuggestedForYou(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRruPrVkps01HSioNxNvlz-tbABSDpPZJhRIQ&s",
              "Cristiano Ronaldo",
            ),
            const SizedBox(width: 6),
            SuggestedForYou(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-P7PSO_hZpFpHrAtfV3Xvpb13CT7V9kuKxg&s",
              "Microsoft",
            ),
            const SizedBox(width: 6),
            SuggestedForYou(
              "https://static.wikia.nocookie.net/dream_team/images/7/79/Mrbeastlogo.jpg/revision/latest?cb=20230125153030",
              "MrBeast",
            ),
            const SizedBox(width: 6),
            SuggestedForYou(
              "https://m.media-amazon.com/images/I/41o03HyOYlL.png",
              "Crunchyroll",
            ),
            const SizedBox(width: 6),
            SuggestedForYou(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFt99SJo5xcgEOWnok3x1s660qLcdRKxN5CA&s",
              "Minecraft",
            ),
          ],
        ),
      ),
    );
  }
}
