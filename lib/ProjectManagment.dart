import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget cardBuilder(Color c, String text, String time) {
  return Padding(
    padding: const EdgeInsets.all(2),
    child: Column(
      children: [
        Container(
          width: 260,
          height: 250,
          decoration: BoxDecoration(
            color: c,
            borderRadius: BorderRadius.circular(13),
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.work_outline),
                    Icon(Icons.arrow_outward),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 60, top: 25),
                child: Text(
                  text,
                  style: GoogleFonts.workSans(
                    fontSize: 27,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 30),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Container(
                      width: 137,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Stack(
                            children: [
                              CircleAvatar(
                                radius: 12,
                                backgroundImage: AssetImage(
                                  "images/Travis.png",
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.only(left: 18),
                                child: CircleAvatar(
                                  radius: 12,
                                  backgroundImage: AssetImage(
                                    "images/weeknd.png",
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 8),
                          Text(
                            ' Team',
                            style: GoogleFonts.workSans(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 19),
                  Row(
                    children: [
                      const Icon(
                        Icons.timer_outlined,
                        size: 16,
                        color: Colors.blueGrey,
                      ),
                      const SizedBox(width: 4),
                      Text(time, style: GoogleFonts.workSans(fontSize: 13)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget RecenetCard(String Task, String descp) {
  return Padding(
    padding: const EdgeInsets.only(left: 16),
    child: Column(
      children: [
        Row(
          children: [
            const Icon(Icons.indeterminate_check_box_outlined),
            const SizedBox(width: 10),
            Text(
              Task,
              style: GoogleFonts.workSans(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(left: 32.0, right: 50),
          child: Column(
            children: [
              Text(
                descp,
                style: GoogleFonts.workSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 10),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 50),
              child: Column(
                children: [
                  Text(
                    "10:00 AM | Jan 05 2025",
                    style: GoogleFonts.workSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 25),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.ios_share_sharp,
                    color: Colors.black.withOpacity(0.6),
                  ),
                  const SizedBox(width: 12),
                  Icon(
                    Icons.edit_outlined,
                    color: Colors.black.withOpacity(0.6),
                  ),
                  const SizedBox(width: 12),
                  Icon(
                    Icons.delete_outline_outlined,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ],
              ),
            ),
          ],
        ),

        Divider(thickness: 1, height: 60, color: Colors.grey.shade200),
      ],
    ),
  );
}

class Projectmanagment extends StatelessWidget {
  const Projectmanagment({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAppBar(
        height: 50,
        color: Color.fromARGB(255, 229, 233, 235),

        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 3, horizontal: 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.home_outlined),
              Icon(Icons.bookmark_outline),

              Icon(Icons.add, size: 30),

              Icon(Icons.file_open_outlined),
              Icon(Icons.account_circle_outlined),
            ],
          ),
        ),
      ),

      extendBodyBehindAppBar: true,

      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.transparent,
        title: const Row(children: [Icon(Icons.menu)]),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("images/user.avif"),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFD4ECFF), Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.2],
            ),
          ),

          child: Column(
            children: [
              const SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.only(left: 16),

                child: Row(
                  children: [
                    Text(
                      "Welcome Back, ",
                      style: GoogleFonts.pacifico(
                        color: const Color.fromARGB(255, 14, 10, 10),
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "Jenefier",
                      style: GoogleFonts.pacifico(
                        color: const Color.fromARGB(255, 77, 149, 208),
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  width: 380,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(Icons.search),
                      ),

                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            hintStyle: TextStyle(color: Colors.black),
                            contentPadding: EdgeInsets.only(
                              left: 15,
                              bottom: 8,
                            ),
                            focusedBorder: InputBorder.none,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "All",
                    style: GoogleFonts.workSans(fontWeight: FontWeight.w500),
                  ),

                  Text(
                    "Projects",
                    style: GoogleFonts.workSans(fontWeight: FontWeight.w500),
                  ),

                  Text(
                    "Team",
                    style: GoogleFonts.workSans(fontWeight: FontWeight.w500),
                  ),

                  Text(
                    "Dashboard",
                    style: GoogleFonts.workSans(fontWeight: FontWeight.w500),
                  ),
                ],
              ),

              const SizedBox(height: 25),
              Container(
                padding: const EdgeInsets.only(left: 10),
                width: 340,
                height: 100,
                decoration: BoxDecoration(
                  color: const Color(0xFFECEEFD),

                  borderRadius: BorderRadius.circular(13),
                ),
                child: Row(
                  children: [
                    Text(
                      "Ready to Build \nSomething Awesome?	",
                      style: GoogleFonts.workSans(fontSize: 15),
                    ),
                    const Spacer(),

                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "images/undraw_typing-code_6t2b-removebg-preview (1).png",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 22),
              Padding(
                padding: const EdgeInsets.only(right: 220),
                child: Text(
                  "In Progress",
                  style: GoogleFonts.workSans(fontSize: 20),
                ),
              ),
              const SizedBox(height: 10),

              const projectCard(),

              const SizedBox(height: 22),
              Padding(
                padding: const EdgeInsets.only(right: 120),
                child: Text(
                  "Manage Your Daily Task",
                  style: GoogleFonts.workSans(fontSize: 20),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 130,
                      height: 200,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE5F7FB),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(13.0),
                                child: Container(
                                  width: 70,
                                  height: 70,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "images/Mobile development-cuate.png",
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 35),
                          Padding(
                            padding: const EdgeInsets.only(right: 46),
                            child: Text(
                              "Mobile",
                              style: GoogleFonts.workSans(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),

                          const SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.only(right: 60),
                            child: Text(
                              "6 Tasks",
                              style: GoogleFonts.workSans(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 10),
                    Column(
                      children: [
                        Container(
                          width: 210,
                          height: 95,
                          decoration: BoxDecoration(
                            color: const Color(0xFFEDEEFF),
                            borderRadius: BorderRadius.circular(12),
                          ),

                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Container(
                                  width: 55,
                                  height: 55,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "images/Mobile wireframe-amico.png",
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      "Wireframe",
                                      style: GoogleFonts.workSans(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(right: 55),
                                    child: Text(
                                      "12 Tasks",
                                      style: GoogleFonts.workSans(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 10),
                        Container(
                          width: 210,
                          height: 95,
                          decoration: BoxDecoration(
                            color: const Color(0xFFEDEEFF),
                            borderRadius: BorderRadius.circular(12),
                          ),

                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Container(
                                  width: 55,
                                  height: 55,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "images/Website Creator-amico.png",
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      "Website",
                                      style: GoogleFonts.workSans(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(right: 55),
                                    child: Text(
                                      "8 Tasks",
                                      style: GoogleFonts.workSans(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
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
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(right: 140),
                child: Text(
                  "Recently Completed",
                  style: GoogleFonts.workSans(fontSize: 20),
                ),
              ),
              const SizedBox(height: 25),

              Container(child: const RecentActivity()),
            ],
          ),
        ),
      ),
    );
  }
}

class RecentActivity extends StatelessWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        RecenetCard(
          "Desgin Team Presentation",
          "Prepare a slide deck for tomorrows meeting with the desgin team.....",
        ),
        RecenetCard(
          "Marketing Strategy Review",
          "Summarize key campaign results and prepare insights for tomorrow’s marketing sync...",
        ),
        RecenetCard(
          "Product Demo Walkthrough",
          "Create a step-by-step guide to showcase new features in tomorrow’s product meeting...",
        ),
        RecenetCard(
          "Client Feedback Summary",
          "Compile recent client notes and prepare a report for the upcoming review session...",
        ),

        RecenetCard(
          "QA Testing Checklist",
          "Draft a checklist for regression testing before the next app deployment window...",
        ),
      ],
    );
  }
}

class projectCard extends StatelessWidget {
  const projectCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 10),
          cardBuilder(const Color(0xFFE5F7FB), "Admin \nDashboard", "7 Days"),
          const SizedBox(width: 10),
          cardBuilder(const Color(0xFFEDEEFF), "Mobile UI \nDevelopment", "4 Hours"),
          const SizedBox(width: 10),
          cardBuilder(
            const Color(0xFFE5F7FB),
            "React Native \nIntegration",
            "3 Days",
          ),
          const SizedBox(width: 10),
          cardBuilder(const Color(0xFFEDEEFF), "Spotfiy UI \nDesgin", "2 Days"),
          const SizedBox(width: 10),
          cardBuilder(const Color(0xFFE5F7FB), "Task Tracker \nApp", "4 Days"),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
