# 🎧 Spotify Clone App (Flutter + Backend)

A Spotify-inspired mobile UI built with Flutter and designed in Figma.  
This app features artist pages, a now playing bar, playback functionality, and integration with a backend (not included in this repository).

---

## 🚀 Features

- 🎨 Clean, modern UI inspired by Spotify
- 📱 Responsive Flutter design
- 🔊 Song playback
- 👤 Artist profile pages
- ❤️ Liked Songs screen
- 🎵 Now Playing bottom bar
- 🌐 Backend support for songs, playlists, and user data *(not yet pushed)*

---

## ⚙️ Backend

This Flutter frontend relies on a **backend server** for:
- Song data (stream URLs, titles, covers)
- User authentication(will be intergrated soon)
- Playlists and likes(will be intergrated soon)

> ⚠️ The backend code (SpringBoot) is not part of this repo and will be added later.

---

## 📦 Tech Stack

- **Flutter** & **Dart**
- `just_audio` / `audioplayers` for music playback
- **Figma** for UI design
- **Backend** (Spring Boot / Node.js API - not pushed)
- JSON / REST API integration

---

## 🖼️ Assets

Images (album art, logos, etc.) are stored in:
- `assets/` or `images/` folder , which are not present in this repo
- Configured in `pubspec.yaml`

---

## 🛠️ Getting Started

### Prerequisites

- Flutter SDK installed
- Android/iOS emulator or device
- API backend (optional for full functionality)

### Run the App

```bash
git clone https://github.com/your-username/Spotify.git
cd Spotify
flutter pub get
flutter run
