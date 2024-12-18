import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:studyportal/components/course_card.dart';

class ScrollSection extends StatelessWidget {
  const ScrollSection({
    super.key,
    required this.courseCards,
  });

  final List<CourseCard> courseCards;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color(0xFFE3E2E8), width: 1),
            borderRadius: BorderRadius.circular(8)),
        child: ResponsiveGridList(
          scroll: false,
          desiredItemWidth: 160,
          minSpacing: 12,
          children: courseCards,
        ));
  }
}
