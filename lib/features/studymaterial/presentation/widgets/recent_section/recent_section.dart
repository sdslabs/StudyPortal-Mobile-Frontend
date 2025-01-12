import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/file_tiles/file_tile.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/more_info_button/more_info_button.dart';
import 'package:studyportal/features/studymaterial/presentation/pages/see_all_recent_page/see_all_recent_page.dart';

class RecentSection extends StatelessWidget {
  const RecentSection({
    super.key,
    required this.size,
    required this.recentTiles,
  });

  final Size size;
  final List<FileTile> recentTiles;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      padding: const EdgeInsets.all(12),
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFE3E2E8)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  right: 8,
                  top: 4,
                  bottom: 4,
                ),
                child: SvgPicture.asset(
                  "lib/core/svgs/hourglass.svg",
                  height: 16,
                  width: 16,
                ),
              ),
              const Text(
                "Recent",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              )
            ],
          ),
          const SizedBox(
            height: 13,
          ),
          SizedBox(
            height: 228,
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return recentTiles[index];
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 13,
                );
              },
            ),
          ),
          const SizedBox(
            height: 9,
          ),
          Row(
            children: [
              const Spacer(),
              MoreInfoButton(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SeeAllRecentPage()));
                  },
                  info: "See all",
                  icon: SvgPicture.asset(
                    "lib/core/svgs/right_caret.svg",
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
