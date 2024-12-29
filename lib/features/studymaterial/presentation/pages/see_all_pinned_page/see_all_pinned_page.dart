import 'package:flutter/material.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/scroll_section/scroll_section.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/course_card/course_card.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/tools/pin_enum.dart';

class SeeAllPinnedPage extends StatelessWidget {
  const SeeAllPinnedPage({super.key});

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    const List<CourseCard> courseCards = [
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
        pin: Pin.active,
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
        pin: Pin.active,
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
        pin: Pin.active,
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
        pin: Pin.active,
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

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Pinned",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: const [
              ScrollSection(scroll: true, rows: 4, courseCards: courseCards),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
