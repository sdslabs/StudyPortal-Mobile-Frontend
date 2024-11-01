import 'package:flutter/material.dart';

class ExploreMainSection extends StatelessWidget {
  const ExploreMainSection({
    super.key,
    required this.size,
    required this.CourseCards,
  });

  final Size size;
  final List<Widget> CourseCards;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color(0xFFE3E2E8), width: 1),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Container(
              child: Column(
            children: [
              for (int index = 0; index < CourseCards.length; index += 2)
                Column(
                  children: [
                    Row(
                      children: [
                        CourseCards[index],
                        const SizedBox(width: 16),
                        if (index + 1 < CourseCards.length)
                          CourseCards[index + 1],
                      ],
                    ),
                    const SizedBox(height: 16)
                  ],
                )
            ],
          )),
        ],
      ),
    );
  }
}
