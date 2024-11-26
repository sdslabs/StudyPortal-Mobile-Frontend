import 'package:flutter/material.dart';

class FileScrollSection extends StatelessWidget {
  const FileScrollSection({
    super.key,
    required this.size,
    required this.FileTiles,
  });

  final Size size;
  final List<Widget> FileTiles;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFE3E2E8)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          for (int index = 0; index < FileTiles.length; index++)
            Column(
              children: [
                FileTiles[index],
                const SizedBox(
                  height: 13,
                ),
              ],
            )
        ],
      ),
    );
  }
}