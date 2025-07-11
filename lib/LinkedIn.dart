import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget CompanyCardBuilder(String Profile, String ComanyName, String discp) {
  return Padding(
    padding: const EdgeInsets.only(left: 10, top: 1),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 58),
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: NetworkImage(Profile)),
            ),
          ),
        ),

        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Text(
                ComanyName,
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 0),
            Padding(
              padding: const EdgeInsets.only(bottom: 1),
              child: Text(
                discp,
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 2),
            Row(
              children: [
                const Icon(Icons.trending_up, size: 20),
                const SizedBox(width: 3),
                Text(
                  'Because you recently followed GitHub',
                  style: GoogleFonts.roboto(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ],
            ),

            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                side: const BorderSide(color: Colors.blue),
                foregroundColor: Colors.blue,
              ),
              child: const Text("+ Follow"),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget PostCard(
  String Profile,
  String CompanyName,
  String discp,
  String t1,
  String t2,
  String Image,
) {
  return Container(
    width: double.infinity,
    height: 660,
    decoration: const BoxDecoration(color: Colors.white),
    child: Column(
      children: [
        //
        //
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: NetworkImage(Profile)),
                ),
              ),
            ),
            const SizedBox(width: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  CompanyName,
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.8),
                  ),
                ),

                Text(
                  discp,
                  style: GoogleFonts.roboto(
                    fontSize: 10,
                    color: Colors.black.withOpacity(0.8),
                  ),
                ),
              ],
            ),

            const Spacer(),

            const Icon(Icons.more_vert),
            const SizedBox(width: 14),
            const Icon(Icons.close),
          ],
        ),
        //
        //
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(
                t1,
                style: GoogleFonts.roboto(
                  fontSize: 11,
                  color: Colors.black.withOpacity(0.8),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                t2,
                style: GoogleFonts.roboto(
                  fontSize: 11,
                  color: Colors.black.withOpacity(0.8),
                ),
              ),
            ],
          ),
        ),
        //
        //
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(top: 1),
          child: Container(
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(Image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        //
        //
        const SizedBox(height: 10),
        Row(
          children: [
            const SizedBox(width: 10),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                side: const BorderSide(color: Colors.blue),
                foregroundColor: Colors.blue,
              ),

              child: Row(
                children: [
                  const Icon(Icons.add, size: 14),
                  const SizedBox(width: 3),
                  Text('Follow', style: GoogleFonts.roboto(fontSize: 13)),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 10, bottom: 0),
              child: Text(
                '428 Comments  ●  49 Reposts',
                style: GoogleFonts.roboto(
                  fontSize: 13,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ),
          ],
        ),
        //
        //
        //
        const Divider(
          thickness: 1,
          height: 30,
          indent: 10,
          endIndent: 10,
          color: Colors.grey,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.thumb_up_alt_outlined,
                    color: Colors.black.withOpacity(0.6),
                  ),
                  const Text("Like"),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.comment_outlined,
                    color: Colors.black.withOpacity(0.6),
                  ),
                  const Text("Comment"),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.share, color: Colors.black.withOpacity(0.6)),
                  const Text("Share"),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget SuggestedForYou(String image, String name) {
  return Container(
    padding: const EdgeInsets.only(top: 15),
    width: 260,
    height: 270,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.white,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 140,
          height: 140,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),

        const SizedBox(height: 20),
        Text(
          name,
          style: GoogleFonts.sora(
            fontSize: 15,
            fontWeight: FontWeight.w300,
            color: Colors.black,
          ),
        ),

        const SizedBox(height: 20),

        Container(
          width: 120,
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.blueAccent,
          ),
          child: Row(
            children: [
              const Icon(Icons.add, size: 14),
              const SizedBox(width: 3),
              Text('Follow', style: GoogleFonts.roboto(fontSize: 14)),
            ],
          ),
        ),
      ],
    ),
  );
}

class Linkedin extends StatelessWidget {
  const Linkedin({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> postLogos = [
      "https://media.licdn.com/dms/image/v2/D560BAQHpzXbqSyR74A/company-logo_200_200/B56ZT8EYB8HsAI-/0/1739395793272/openai_logo?e=2147483647&v=beta&t=KqQyuosYiiBMx7W0kz3PILrchXDcy1wsCN8EjnQdUJc",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREdjFv7NKuuqKIlKIe4_Z7ZL1cdzXZv8MAqQ&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-P7PSO_hZpFpHrAtfV3Xvpb13CT7V9kuKxg&s",
      "https://images-eds-ssl.xboxlive.com/image?url=4rt9.lXDC4H_93laV1_eHHFT949fUipzkiFOBH3fAiZZUCdYojwUyX2aTonS1aIwMrx6NUIsHfUHSLzjGJFxxsG72wAo9EWJR4yQWyJJaDaK1XdUso6cUMpI9hAdPUU_FNs11cY1X284vsHrnWtRw7oqRpN1m9YAg21d_aNKnIo-&format=source",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiP_5rf4yA_KHNlTfaxmZ6ROYx-8MF6ZAuYA&s",
      "https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png",
    ];

    List<String> postTitles = [
      "OpenAI",
      "FlipKart",
      "Microsoft",
      "Discord",
      "YouTube",
      "Instagram",
    ];

    List<String> postSubtitles = [
      "An AI research and deployment company..",
      "India’s leading e-commerce marketplace..",
      "Empowering every user and every business.",
      "Your place to talk and hang out.",
      "Broadcast yourself to the world.",
      "Capture and share the world’s moments.",
    ];

    List<String> postDescriptions1 = [
      "OpenAI is dedicated to putting that alignment of interests first..",
      "Built on trust, Flipkart empowers every shopper across the country",
      "Technology for a more inclusive future.",
      "Where communities thrive and friendships grow.",
      "Where creators share stories that shape culture.",
      "Where photos, reels, and stories connect us all.",
    ];

    List<String> postDescriptions2 = [
      "Where imagination meets machine intelligence",
      "Delivering smiles, one order at a time.",
      "Committed to building tech that is secure and inclusive for all",
      "Designed for gamers, used by everyone.",
      "Empowering expression through video for everyone.",
      "Built for creativity, discovery, and connection.",
    ];

    List<String> postImages = [
      "https://i.insider.com/66a256d95a8a7bf049196e7a?width=900",
      "https://static.startuptalky.com/2024/03/Flipkart-Quick-Commerce-StartupTalky.jpg",
      "https://kidsonesoftware.com/wp-content/uploads/2022/12/The-Birth-Of-Microsoft.jpg",
      "https://cached.imagescaler.hbpl.co.uk/resize/scaleWidth/1272/cached.offlinehbpl.hbpl.co.uk/news/SUC/Discord_IAP_KeyVisuals_Header_02.jpg",
      "https://i.pinimg.com/736x/cf/85/8c/cf858ce6e9a390fab3e997db3687b893.jpg",
      "https://unblast.com/wp-content/uploads/2023/06/Instagram-UI-Template-and-Mockup-3.jpg",
    ];

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            const Icon(Icons.account_circle_outlined),
            const SizedBox(width: 20),

            Container(
              height: 32,
              width: 250,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 223, 235, 239),
                borderRadius: BorderRadius.circular(19),
              ),
              child: const TextField(
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                decoration: InputDecoration(
                  icon: Icon(Icons.search, size: 20),
                  hintText: "Search",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w100,
                  ),
                  border: InputBorder.none,

                  contentPadding: EdgeInsets.zero,
                ),
              ),
            ),

            const Spacer(),
            Icon(Icons.message_rounded, color: Colors.black.withOpacity(0.7)),
          ],
        ),
      ),

      bottomNavigationBar: const BottomAppBar(
        height: 54,
        color: Colors.white,

        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.home, color: Colors.grey),
              Icon(Icons.search, color: Colors.grey),
              Icon(Icons.add, color: Colors.grey),
              Icon(Icons.notification_add, size: 26, color: Colors.grey),
              Icon(Icons.account_circle_outlined, color: Colors.grey),
            ],
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsGeometry.all(1),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 545,
                decoration: const BoxDecoration(color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 12,
                      ),
                      child: Text(
                        'Recommended for you',
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),

                    const SizedBox(height: 3),
                    CompanyCardBuilder(
                      "https://media.licdn.com/dms/image/v2/C4E0BAQGrumzlg8vmMw/company-logo_400_400/company-logo_400_400/0/1674629527561/chatgpt_generative_ai_logo?e=2147483647&v=beta&t=1DlRNAF68h-M-2nQ_Z-nv0oSRWJ7RXkZBcgyYWF5NRY",
                      'Generative AI',
                      'Discover, Learn, And Grow With Generative AI',
                    ),
                    Divider(
                      color: Colors.grey.shade300,
                      thickness: 1,
                      height: 30,
                    ),
                    CompanyCardBuilder(
                      "https://media.licdn.com/dms/image/v2/D560BAQGe-H392ULJ-Q/company-logo_200_200/company-logo_200_200/0/1724882065232/nvidia_ai_logo?e=2147483647&v=beta&t=j0MPEC2qbwqIblySgq5as57U1eRclDyeWWl1AAZe3eQ",
                      "NVIDIA AI",
                      "Explore Endless Possibilities  ",
                    ),
                    Divider(
                      color: Colors.grey.shade300,
                      thickness: 1,
                      height: 30,
                    ),
                    CompanyCardBuilder(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0ejoZpcrxK_X48h7hE0R6T5ofUuyvdSmfbg&s",
                      "Google",
                      " Search Smarter With Google",
                    ),
                    Divider(
                      color: Colors.grey.shade300,
                      thickness: 1,
                      height: 30,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Show More',
                          style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.8),
                          ),
                        ),
                        const SizedBox(width: 6),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.black.withOpacity(0.8),
                          size: 19,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 11),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: PostCard(
                      postLogos[index],
                      postTitles[index],
                      postSubtitles[index],
                      postDescriptions1[index],
                      postDescriptions2[index],
                      postImages[index],
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 170),
                child: Text(
                  'Recommended for you',
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),

              const SizedBox(height: 2),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SuggestedForYou(
                      "https://blogs.nvidia.com/wp-content/uploads/2024/11/sc24-corp-blog-jhh-special-address-1280x680-2.png",
                      "Jensen Huang",
                    ),
                    const SizedBox(width: 5),

                    SuggestedForYou(
                      "https://logo.clearbit.com/amazon.com",
                      "Amazon",
                    ),
                    const SizedBox(width: 5),

                    SuggestedForYou(
                      "https://logo.clearbit.com/jpmorganchase.com",
                      "JPMorgan Chase",
                    ),
                    const SizedBox(width: 5),

                    SuggestedForYou(
                      "https://logo.clearbit.com/deloitte.com",
                      "Deloitte",
                    ),
                    const SizedBox(width: 5),

                    SuggestedForYou(
                      "https://logo.clearbit.com/apple.com",
                      "Apple",
                    ),
                    const SizedBox(width: 5),

                    SuggestedForYou(
                      "https://images-eds-ssl.xboxlive.com/image?url=4rt9.lXDC4H_93laV1_eHHFT949fUipzkiFOBH3fAiZZUCdYojwUyX2aTonS1aIwMrx6NUIsHfUHSLzjGJFxxsG72wAo9EWJR4yQWyJJaDaK1XdUso6cUMpI9hAdPUU_FNs11cY1X284vsHrnWtRw7oqRpN1m9YAg21d_aNKnIo-&format=source",
                      "Discord",
                    ),
                    const SizedBox(width: 5),
                  ],
                ),
              ),

              const SizedBox(height: 13),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: PostCard(
                      postLogos[postLogos.length - 3 + index],
                      postTitles[postTitles.length - 3 + index],
                      postSubtitles[postSubtitles.length - 3 + index],
                      postDescriptions1[postDescriptions1.length - 3 + index],
                      postDescriptions2[postDescriptions2.length - 3 + index],
                      postImages[postImages.length - 3 + index],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
