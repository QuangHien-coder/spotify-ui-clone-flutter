import 'package:flutter/material.dart';

class ProgressSection extends StatelessWidget {
  final double progress;
  final String currentTime;
  final String totalTime;
  final ValueChanged<double> onChanged;

  const ProgressSection({
    super.key,
    required this.progress,
    required this.currentTime,
    required this.totalTime,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 3,
            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6),
            overlayShape: const RoundSliderOverlayShape(overlayRadius: 12),
          ),
          child: Slider(
            value: progress,
            onChanged: onChanged,
            activeColor: Colors.white,
            inactiveColor: Colors.white24,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(currentTime, style: const TextStyle(color: Colors.white70, fontSize: 12)),
              Text(totalTime, style: const TextStyle(color: Colors.white70, fontSize: 12)),
            ],
          ),
        ),
      ],
    );
  }
}