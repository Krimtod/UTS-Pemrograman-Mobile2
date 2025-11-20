import 'package:flutter/material.dart';

class AnimeCard extends StatefulWidget {
  final String imagePath;
  final String title;
  final VoidCallback? onTap;

  const AnimeCard({
    super.key,
    required this.imagePath,
    required this.title,
    this.onTap,
  });

  @override
  State<AnimeCard> createState() => _AnimeCardState();
}

class _AnimeCardState extends State<AnimeCard>
    with SingleTickerProviderStateMixin {
  double scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => scale = 0.95),
      onTapUp: (_) => setState(() => scale = 1.0),
      onTapCancel: () => setState(() => scale = 1.0),

      onTap: widget.onTap,

      child: AnimatedScale(
        duration: const Duration(milliseconds: 150),
        scale: scale,
        child: Container(
          width: 140,
          margin: const EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
              image: AssetImage(widget.imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
