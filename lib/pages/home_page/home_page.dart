import 'package:flutter/material.dart';
import 'package:studyportal/components/course_card.dart';
import 'package:studyportal/components/file_tile.dart';
import 'package:studyportal/pages/home_page/components/bookmarked_section.dart';
import 'package:studyportal/pages/home_page/components/downloaded_section.dart';
import 'package:studyportal/pages/home_page/components/pinned_section.dart';
import 'package:studyportal/pages/home_page/components/recent_section.dart';
import 'package:studyportal/tools/file_type_enum.dart';
import 'package:studyportal/tools/pin_enum.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    const List<CourseCard> CourseCards = [
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

    const List<FileTile> RecentTiles = [
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

    const List<FileTile> BookmarkedTiles = [
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

    const List<FileTile> DownloadedTiles = [
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
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20, top: 20),
                width: size.width,
                height: 50,
                child: const Row(
                  children: [
                    Text(
                      "Home",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                    ),
                    Spacer()
                  ],
                ),
              ),
              PinnedSection(
                  size: size,
                  CourseCards:
                      CourseCards),
              const SizedBox(
                height: 24,
              ),
              RecentSection(size: size, RecentTiles: RecentTiles),
              const SizedBox(
                height: 24,
              ),
              BookmarkedSection(size: size, bookmarkedTiles: BookmarkedTiles),
              const SizedBox(
                height: 24,
              ),
              DownloadedSection(size: size, downloadedTiles: DownloadedTiles),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
