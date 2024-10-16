import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studyportal/pages/home_page/components/more_info_button.dart';

class RecentSection extends StatelessWidget {
  const RecentSection({
    super.key,
    required this.size,
    required this.RecentTiles,
  });

  final Size size;
  final List<Widget> RecentTiles;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      padding: EdgeInsets.all(12),
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xFFE3E2E8)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(
                  right: 8,
                  top: 4,
                  bottom: 4,
                ),
                child: SvgPicture.asset(
                  "lib/assets/svgs/hourglass.svg",
                  height: 16,
                  width: 16,
                ),
              ),
              Text(
                "Recent",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              )
            ],
          ),
          SizedBox(
            height: 13,
          ),
          Container(
            height: 228,
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return RecentTiles[index];
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 13,
                );
              },
            ),
          ),
          SizedBox(
            height: 9,
          ),
          Row(
            children: [
              Spacer(),
              MoreInfoButton(
                  onTap: () {
                    print("See all triggered by recent section");
                  },
                  info: "See all",
                  icon: SvgPicture.asset(
                    "lib/assets/svgs/right_caret.svg",
                    height: 16,
                    width: 16,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}