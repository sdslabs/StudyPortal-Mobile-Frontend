import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/profile_buttons/profile_button.dart';
import 'package:studyportal/features/studymaterial/presentation/pages/activity_page/activity_page.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFE3E2E8)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ProfileButton(
            mainText: "Upload Files",
            subText: "Have something to share?",
            iconPath: "lib/core/svgs/upload.svg",
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ActivityPage()));
            },
          ),
          ProfileButton(
            mainText: "Request Files",
            subText: "Can't find something?",
            iconPath: "lib/core/svgs/request.svg",
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ActivityPage()));
            },
          ),
          ProfileButton(
            mainText: "Activity",
            subText: "Status of uploads and requests",
            iconPath: "lib/core/svgs/activity.svg",
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ActivityPage()));
            },
          ),
          Container(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset("lib/core/svgs/logout.svg",
                    width: 32, height: 32),
                const SizedBox(
                  width: 16,
                ),
                const Text("Logout",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.pinkAccent))
              ],
            ),
          )
        ],
      ),
    );
  }
}
