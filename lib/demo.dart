import 'package:flutter/material.dart';

Widget CardBuilder() {
  return Container(
    margin: const EdgeInsets.only(top: 29, left: 20),
    width: 350,
    height: 100,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20),
          height: 50,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(image: AssetImage("images/logo.png")),
          ),
        ),
        const SizedBox(width: 20),
        const Text(" Spotify"),
      ],
    ),
  );
}

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,

        title: const Text("Test", style: TextStyle(color: Colors.blue)),
      ),

      body: Column(
        children: [
          CardBuilder(),
          const SizedBox(height: 10),
          CardBuilder(),
          const SizedBox(height: 10),
          CardBuilder(),
          const SizedBox(height: 10),
          CardBuilder(),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
