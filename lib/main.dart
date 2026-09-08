import 'package:flutter/material.dart';
import 'now_playing_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Now Playing Clone',
      theme: ThemeData.dark(),
      home: const NowPlayingScreen(),
    );
  }
}