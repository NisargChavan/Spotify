import 'package:audioplayers/audioplayers.dart';
import 'package:all_projects/Spotify/CurrentlyPlayingState.dart';
import 'package:all_projects/Spotify/model/song.dart';
import 'package:flutter/foundation.dart';

class GlobalAudioManager {
  static final AudioPlayer _player = AudioPlayer();
  static String? currentUrl;
  static String? loadedUrl;
  static Duration? _duration;
  static List<Song> _playlist = [];
  static int _currentIndex = -1;
  static bool _isLoading = false;

  static AudioPlayer get player => _player;

  static Stream<Duration> get positionStream => _player.onPositionChanged;
  static Duration? get currentDuration => _duration;
  static final ValueNotifier<bool> isPlayingNotifier = ValueNotifier(false);

  static void setPlaylist(List<Song> songs) {
    _playlist = songs;
  }

  static Future<void> playPause(Song song) async {
    if (_isLoading) return;
    _isLoading = true;

    final state = _player.state;

    final index = _playlist.indexOf(song);
    if (index == -1) {
      _isLoading = false;
      return;
    }
    _currentIndex = index;

    // Pause
    if (currentUrl == song.audio && state == PlayerState.playing) {
      await _player.pause();
      isPlayingNotifier.value = false;

      _isLoading = false;
      return;
    }

    // Resume
    if (currentUrl == song.audio && state == PlayerState.paused) {
      await _player.resume();
      isPlayingNotifier.value = true;
      _isLoading = false;
      return;
    }

    // Load new song if needed
    if (loadedUrl != song.audio) {
      try {
        await _player.stop();
        await Future.delayed(const Duration(milliseconds: 100));
        await _player.setSourceUrl(song.audio);
        loadedUrl = song.audio;

        _duration = await _player.onDurationChanged.firstWhere(
          (d) => d.inMilliseconds > 0,
        );

        _player.onDurationChanged.listen((d) {
          if (d.inMilliseconds > 0) {
            _duration = d;
          }
        });

        currentUrl = song.audio;
        SongPlayerState.currentlyPlayingSong = song;
        SongPlayerState.currentlyPlayingSongNotifier.value = song;
      } catch (e) {
        
        _isLoading = false;
        return;
      }
    }

    await _player.resume();
    print("▶️ Playing: ${song.title}");
    isPlayingNotifier.value = true;
    _isLoading = false;
  }

  static Future<void> playNextSong() async {
    if (_isLoading) return;
    final nextIndex = _currentIndex + 1;
    if (nextIndex >= _playlist.length) {
      await playPause(_playlist[0]);

      SongPlayerState.currentlyPlayingSongNotifier.value = _playlist[0];
    } else if (nextIndex < _playlist.length) {
      await playPause(_playlist[nextIndex]);

      SongPlayerState.currentlyPlayingSong = _playlist[nextIndex];
    } else {
      currentUrl = null;
      SongPlayerState.currentlyPlayingSong = null;
    }
  }

  static Future<void> playPrevSong() async {
    if (_isLoading) return;

    final prevIndex = _currentIndex - 1;
    if (prevIndex >= 0 && prevIndex < _playlist.length) {
      await playPause(_playlist[prevIndex]);
    } else {
      currentUrl = null;
      SongPlayerState.currentlyPlayingSong = null;
    }
  }




  static void setupListeners() {
    _player.onPlayerComplete.listen((event) {
      playNextSong();
    });
  }
}
