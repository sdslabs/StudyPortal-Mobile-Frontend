import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studyportal/components/course_card.dart';
import 'package:studyportal/pages/home_page/components/more_info_button.dart';
import 'package:studyportal/pages/see_all_pinned_page/see_all_pinned_page.dart';

class PinnedSection extends StatelessWidget {
  const PinnedSection({
    super.key,
    required this.size,
    required this.courseCards,
  });

  final Size size;
  final List<CourseCard> courseCards;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color(0xFFE3E2E8), width: 1),
          borderRadius: BorderRadius.circular(8)),
      width: size.width,
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                "lib/assets/svgs/pin_inactive.svg",
                colorFilter:
                    const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                height: 16,
                width: 16,
              ),
              const SizedBox(
                width: 4,
              ),
              const Text(
                "Pinned",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 160,
            width: size.width,
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: courseCards.length,
              itemBuilder: (BuildContext context, int index) {
                return courseCards[index];
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 16,
                );
              },
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              const Spacer(),
              MoreInfoButton(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SeeAllPinnedPage()));
                },
                icon: SvgPicture.asset(
                    height: 11, width: 6, "lib/assets/svgs/right_caret.svg"),
                info: "See all",
              ),
            ],
          )
        ],
      ),
    );
  }
}
