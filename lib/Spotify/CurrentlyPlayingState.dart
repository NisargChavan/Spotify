
import 'model/song.dart';
import 'package:flutter/foundation.dart';

class SongPlayerState {
  static final ValueNotifier<Song?> currentlyPlayingSongNotifier =
      ValueNotifier<Song?>(null);

  static Song? get currentlyPlayingSong => currentlyPlayingSongNotifier.value;

  static set currentlyPlayingSong(Song? song) {
    currentlyPlayingSongNotifier.value = song;
    print("✅ Set global currentlyPlayingSong: ${song?.title}");
  }
}
