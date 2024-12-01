import 'package:flutter/material.dart';
import 'package:studyportal/components/course_card.dart';
import 'package:studyportal/components/file_tile.dart';
import 'package:studyportal/pages/home_page/components/bookmarked_section.dart';
import 'package:studyportal/pages/home_page/components/pinned_section.dart';
import 'package:studyportal/pages/home_page/components/recent_section.dart';
import 'package:studyportal/pages/home_page/pinned_page.dart';
import 'package:studyportal/tools/file_type_enum.dart';

import 'package:studyportal/tools/pin_enum.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    //dummy list of coursecards
    const List<Widget> courseCards = [
      CourseCard(
        title: "Architecture",
        subtitle: "Introduction to the electrical world",
        themeColor: Color(0xFF20284C),
        pin: Pin.active,
      ),
      CourseCard(
        title: "Card1",
        subtitle: "This is the subtitle\nabab\nababa",
        themeColor: Color(0xFF0D891B),
        pin: Pin.none,
      ),
      CourseCard(
        title: "Card1",
        subtitle: "This is the",
        themeColor: Color(0xFFCF4141),
        pin: Pin.active,
      ),
      CourseCard(
        title: "Card1",
        subtitle: "This is the subtitle",
        themeColor: Colors.deepPurple,
        pin: Pin.active,
      ),
    ];

    const List<Widget> recentTiles = [
      FileTile(
        fileType: FileType.link,
        title: "ETEs Final Notes - Fluid Dynamics",
      ),
      FileTile(
        fileType: FileType.book,
        title: "This is a file tile",
      ),
      FileTile(
        fileType: FileType.notes,
        title: "This is a file tile",
      ),
      FileTile(
        fileType: FileType.pyqs,
        title: "This is a file tile",
      )
    ];

    const List<Widget> bookMarkedTiles = [
      FileTile(
        fileType: FileType.link,
        title: "ETEs Final Notes - Fluid Dynamics",
      ),
      FileTile(
        fileType: FileType.book,
        title: "This is a file tile",
      ),
      FileTile(
        fileType: FileType.notes,
        title: "This is a file tile",
      ),
      FileTile(
        fileType: FileType.pyqs,
        title: "This is a file tile",
      )
    ];
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            // height: size.height,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 23),
                  // color: Colors.amber,
                  width: size.width,
                  height: 50,
                  child: const Row(
                    children: [
                      Text(
                        "Home",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 24),
                      ),
                      Spacer()
                    ],
                  ),
                ),
                PinnedSection(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const PinnedPage())),
                    size: size,
                    courseCards:
                        courseCards), //Pinned cards section, goto definition for more info
                const SizedBox(
                  height: 24,
                ),
                RecentSection(size: size, RecentTiles: recentTiles),
                const SizedBox(
                  height: 24,
                ),
                BookmarkedSection(size: size, bookmarkedTiles: bookMarkedTiles),
                //This is the recents section, goto definition for more info
              ],
            ),
          ),
        ),
      )),
    );
  }
}
