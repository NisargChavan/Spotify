import 'package:http/http.dart' as http;
import 'package:all_projects/Spotify/model/song.dart';
import 'dart:convert';

Future<List<Song>> fetchSongs() async {
  const ngrokBase = "https://e396c44ff693.ngrok-free.app";

  final response = await http.get(Uri.parse("$ngrokBase/songs"));

  if (response.statusCode == 200) {
    final List jsonData = json.decode(response.body);

    List<Song> songs = jsonData.map((item) {
      item['image'] = item['image'].replaceAll(
        "http://localhost:8080",
        ngrokBase,
      );
      item['audio'] = item['audio'].replaceAll(
        "http://localhost:8080",
        ngrokBase,
      );

      return Song.fromJson(item);
    }).toList();

    return songs;
  } else {
    throw Exception("song fateching failed ${response.statusCode}");
  }
}
