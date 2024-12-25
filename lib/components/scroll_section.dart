import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:studyportal/components/course_card.dart';

class ScrollSection extends StatelessWidget {
  const ScrollSection(
      {super.key,
      required this.rows,
      required this.courseCards,
      required this.scroll,
      this.title = ""});

  final double rows;
  final List<CourseCard> courseCards;
  final bool scroll;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color(0xFFE3E2E8), width: 1),
            borderRadius: BorderRadius.circular(8)),
        child: ResponsiveGridList(
          scroll: scroll,
          desiredItemWidth: 160,
          minSpacing: 12,
          children: courseCards,
        ));
  }
}
