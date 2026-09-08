import 'package:flutter/material.dart';
import '../album_art.dart';
import '../song_info.dart';
import '../progress_section.dart';
import '../playback_controls.dart';

class NowPlayingScreen extends StatefulWidget {
  const NowPlayingScreen({super.key});

  @override
  State<NowPlayingScreen> createState() => _NowPlayingScreenState();
}

class _NowPlayingScreenState extends State<NowPlayingScreen> {
  bool _isPlaying = true;
  double _progress = 0.35;

  void _togglePlayPause() {
    setState(() => _isPlaying = !_isPlaying);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 32),
                    onPressed: () {},
                  ),
                  const Column(
                    children: [
                      Text('ĐANG PHÁT TỪ PLAYLIST',
                          style: TextStyle(color: Colors.white70, fontSize: 11, letterSpacing: 1)),
                      Text('Nhạc Chill Mỗi Ngày',
                          style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  IconButton(
                    icon: const Icon(Icons.more_horiz, color: Colors.white, size: 28),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Expanded(child: AlbumArt()),
              const SizedBox(height: 24),
              SongInfo(
                title: 'Tên Bài Hát Ở Đây',
                artist: 'Tên Ca Sĩ',
                onFavoriteTap: () {},
              ),
              const SizedBox(height: 8),
              ProgressSection(
                progress: _progress,
                currentTime: '1:23',
                totalTime: '3:45',
                onChanged: (value) => setState(() => _progress = value),
              ),
              const SizedBox(height: 8),
              PlaybackControls(
                isPlaying: _isPlaying,
                onPlayPauseTap: _togglePlayPause,
                onPreviousTap: () {},
                onNextTap: () {},
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(icon: const Icon(Icons.devices, color: Colors.white70, size: 20), onPressed: () {}),
                  IconButton(icon: const Icon(Icons.share, color: Colors.white70, size: 20), onPressed: () {}),
                ],
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}