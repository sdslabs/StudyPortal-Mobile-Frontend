import 'package:flutter/material.dart';
import 'package:studyportal/features/studymaterial/data/pre_integration/hardcoded_stuff.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/bookmarked_section/bookmarked_section.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/downloaded_section/downloaded_section.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/pinned_section/pinned_section.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/recent_section/recent_section.dart';
import 'package:studyportal/features/studymaterial/presentation/pages/see_all_pinned_page/see_all_pinned_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    //logic to get list of pinned courses from the database
    ///course cards coming from the db have to have the following information:
    ///title, subtitle, themeColor, pin, onTap

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
                courseCards: HardCodedConstants.courseCards,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SeeAllPinnedPage()));
                },
              ),
              const SizedBox(
                height: 24,
              ),
              RecentSection(
                  size: size, recentTiles: HardCodedConstants.recentTiles),
              const SizedBox(
                height: 24,
              ),
              BookmarkedSection(
                  size: size,
                  bookmarkedTiles: HardCodedConstants.bookmarkedTiles),
              const SizedBox(
                height: 24,
              ),
              DownloadedSection(
                  size: size,
                  downloadedTiles: HardCodedConstants.downloadedTiles),
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
