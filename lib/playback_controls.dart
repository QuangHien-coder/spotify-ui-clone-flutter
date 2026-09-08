import 'package:flutter/material.dart';

class PlaybackControls extends StatelessWidget {
  final bool isPlaying;
  final VoidCallback onPlayPauseTap;
  final VoidCallback onPreviousTap;
  final VoidCallback onNextTap;

  const PlaybackControls({
    super.key,
    required this.isPlaying,
    required this.onPlayPauseTap,
    required this.onPreviousTap,
    required this.onNextTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const IconButton(
          icon: Icon(Icons.shuffle, color: Colors.white70, size: 22),
          onPressed: null,
        ),
        IconButton(
          icon: const Icon(Icons.skip_previous, color: Colors.white, size: 36),
          onPressed: onPreviousTap,
        ),
        Container(
          width: 64,
          height: 64,
          decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: IconButton(
            icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow, color: Colors.black, size: 32),
            onPressed: onPlayPauseTap,
          ),
        ),
        IconButton(
          icon: const Icon(Icons.skip_next, color: Colors.white, size: 36),
          onPressed: onNextTap,
        ),
        const IconButton(
          icon: Icon(Icons.repeat, color: Colors.white70, size: 22),
          onPressed: null,
        ),
      ],
    );
  }
}