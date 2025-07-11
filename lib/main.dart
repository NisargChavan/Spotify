import 'package:flutter/material.dart';
import 'package:all_projects/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); 

  WidgetsFlutterBinding.ensureInitialized();



  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home: Home(),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:all_projects/home.dart';
// import 'dart:io';
// import 'package:flutter/foundation.dart';

// /// Allow HTTP/SSL exceptions (debug only!)
// class MyHttpOverrides extends HttpOverrides {
//   @override
//   HttpClient createHttpClient(SecurityContext? context) {
//     return super.createHttpClient(context)
//       ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
//   }
// }

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();

//   /// 🛡️ Catch Flutter framework errors (UI)
//   FlutterError.onError = (FlutterErrorDetails details) {
//     FlutterError.presentError(details);
//     debugPrint("🔥 Flutter UI Error: ${details.exceptionAsString()}");
//   };

//   /// 🛡️ Catch all other Dart (async) errors (like SocketException)
//   PlatformDispatcher.instance.onError = (error, stack) {
//     debugPrint("❌ Dart Runtime Error: $error");
//     return true; // prevent crash
//   };

//   /// 🛡️ Bypass SSL errors (use only in development)
//   if (kDebugMode) {
//     HttpOverrides.global = MyHttpOverrides();
//   }

//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       home: Home(),
//     );
//   }
// }

