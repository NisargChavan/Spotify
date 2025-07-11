class Song {
  final int id;
  final String title;
  final String artist;
  String image;
  String audio;

  Song({
    required this.id,
    required this.title,
    required this.artist,
    required this.image,
    required this.audio,
  });

  factory Song.fromJson(Map<String, dynamic> json) {
    return Song(
      id: json['id'],
      title: json['title'],
      artist: json['artist'],
      image: json['image'],
      audio: json['audio'],
    );
  }
}
