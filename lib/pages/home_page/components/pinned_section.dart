import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studyportal/pages/home_page/components/more_info_button.dart';

class PinnedSection extends StatelessWidget {
  const PinnedSection({
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
      width: size.width,
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                "lib/assets/svgs/pin_inactive.svg",
                colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
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
          Container(
            height: 160,
            width: size.width,
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: CourseCards.length,
              itemBuilder: (BuildContext context, int index) {
                return CourseCards[index];
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 16,
                );
              },
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Spacer(),
              Container(
                child: MoreInfoButton(
                  onTap: () {
                    print("See all triggered by pinned section");
                  },
                  icon: SvgPicture.asset(
                      height: 11, width: 6, "lib/assets/svgs/right_caret.svg"),
                  info: "See all",
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
