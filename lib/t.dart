import 'package:flutter/material.dart';

class ListViewexample extends StatelessWidget {
  const ListViewexample({super.key});
  @override
  Widget build(BuildContext context) {
    List<String> imageUrls = [
      "https://c4.wallpaperflare.com/wallpaper/146/782/552/nature-is-pleased-with-simplicity-and-nature-is-no-dummy-wallpaper-preview.jpg",
      "https://w0.peakpx.com/wallpaper/748/979/HD-wallpaper-dummy-windmill-windmill-cool.jpg",
      "https://i.pinimg.com/736x/10/6a/f3/106af3e4cf8e90f10325112c8cc6bef7.jpg",
      "https://live.staticflickr.com/65535/50729624248_04e03bbf2d_b.jpg",
      "https://www.shutterstock.com/image-photo/nature-pleased-simplicity-no-dummy-600w-1575425551.jpg",
    ];

    List<String> names = ["Name_1", "Name_2", "Name_3", "Name_4", "Name_5"];

    List<String> positions = [
      "Position_1",
      "Position_2",
      "Position_3",
      "Position_4",
      "Position_5",
    ];

    return Scaffold(
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Card(
              imageUrl: imageUrls[index],
              name: names[index],
              postiton: positions[index],
            ),
          );
        },
      ),
    );
  }
}

class Card extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String postiton;

  const Card({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.postiton,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        width: 240,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: Colors.transparent,
          border: Border.all(color: Colors.grey),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(120),
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(name),
                const SizedBox(height: 10, width: 10),
                Text(postiton),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
