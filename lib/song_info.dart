import 'package:flutter/material.dart';

class SongInfo extends StatelessWidget {
  final String title;
  final String artist;
  final VoidCallback onFavoriteTap;

  const SongInfo({
    super.key,
    required this.title,
    required this.artist,
    required this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Text(artist, style: const TextStyle(color: Colors.white70, fontSize: 15)),
            ],
          ),
        ),
        IconButton(
          icon: const Icon(Icons.favorite_border, color: Colors.green, size: 26),
          onPressed: onFavoriteTap,
        ),
      ],
    );
  }
}