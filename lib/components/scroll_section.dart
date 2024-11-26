import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class ScrollSection extends StatelessWidget {
  const ScrollSection({
    super.key,
    required this.rows,
    required this.CourseCards,
  });

  final double rows;
  final List<Widget> CourseCards;

  @override
  Widget build(BuildContext context) {
      return Container(
          height: rows*160 - 18,
          padding: const EdgeInsets.only(top: 12, bottom: 12),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color(0xFFE3E2E8), width: 1),
              borderRadius: BorderRadius.circular(8)),
          child: ResponsiveGridList(
            desiredItemWidth: 160,
            minSpacing: 12,
            children: CourseCards,
          ));
  }
}
