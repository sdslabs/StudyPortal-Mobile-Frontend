import 'package:flutter/material.dart';
import 'package:studyportal/components/course_card.dart';
import 'package:studyportal/tools/pin_enum.dart';
import 'package:studyportal/components/scroll_section.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    const List<Widget> CourseCards = [
      // CourseCard(
      //   title: "Architecture",
      //   subtitle: "Introduction to the electrical world",
      //   themeColor: Color(0xFF20284C),
      //   pin: Pin.none,
      // ),
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
        pin: Pin.none,
      ),
      CourseCard(
        title: "Card1",
        subtitle: "This is the subtitle",
        themeColor: Colors.deepPurple,
        pin: Pin.none,
      ),
      CourseCard(
        title: "Architecture",
        subtitle: "Introduction to the electrical world",
        themeColor: Color(0xFF20284C),
        pin: Pin.none,
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
        pin: Pin.none,
      ),
      CourseCard(
        title: "Card1",
        subtitle: "This is the subtitle",
        themeColor: Colors.deepPurple,
        pin: Pin.none,
      ),
      CourseCard(
        title: "Architecture",
        subtitle: "Introduction to the electrical world",
        themeColor: Color(0xFF20284C),
        pin: Pin.none,
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
        pin: Pin.none,
      ),
      CourseCard(
        title: "Card1",
        subtitle: "This is the subtitle",
        themeColor: Colors.deepPurple,
        pin: Pin.none,
      ),
      CourseCard(
        title: "Architecture",
        subtitle: "Introduction to the electrical world",
        themeColor: Color(0xFF20284C),
        pin: Pin.none,
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
        pin: Pin.none,
      ),
      CourseCard(
        title: "Card1",
        subtitle: "This is the subtitle",
        themeColor: Colors.deepPurple,
        pin: Pin.none,
      ),
    ];

    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20, top: 20),
              width: size.width,
              height: 50,
              child: const Row(
                children: [
                  Text(
                    "Explore",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                  ),
                  Spacer()
                ],
              ),
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFC8CBDC),
              ),
              child: TabBar(
                  controller: _tabController,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0xFFC8CBDC),
                      width: 5,
                    ),
                    color: Colors.white,
                  ),
                  dividerColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelStyle: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(38, 48, 83, 1.0)),
                  onTap: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                    _tabController.animateTo(index,
                        duration: const Duration(milliseconds: 500));
                  },
                  tabs: const [
                    Tab(
                      text: "Academics",
                    ),
                    Tab(
                      text: "More",
                    ),
                  ]),
            ),
            const SizedBox(height: 20),
            IndexedStack(
              index: _selectedIndex,
              children: [
                Visibility(
                  maintainState: true,
                  visible: _selectedIndex == 0,
                  child: const ScrollSection(rows: 3.5, CourseCards: CourseCards),
                ),
                Visibility(
                  maintainState: true,
                  visible: _selectedIndex == 1,
                  child: ScrollSection(
                      rows: 3.5,
                      CourseCards: [CourseCards[1], CourseCards[2]]),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
