import 'package:flutter/material.dart';
import 'package:studyportal/components/sp_bottom_navbar.dart';
import 'package:studyportal/pages/explore_page/explore_page.dart';
import 'package:studyportal/pages/home_page/home_page.dart';
import 'package:studyportal/pages/profile_page/profile_page.dart';

void main() {
  runApp(const StudyPortal());
}

class StudyPortal extends StatefulWidget {
  const StudyPortal({super.key});

  @override
  State<StudyPortal> createState() => _StudyPortalState();
}

class _StudyPortalState extends State<StudyPortal> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const ExplorePage(),
    const ProfilePage(),
  ];

  void _onTap(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: const TextTheme(titleLarge: TextStyle()),
          fontFamily: "Poppins",
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF263054)),
          scaffoldBackgroundColor: Color(0xFFF0F1F5)),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar:
            SPBottomNavBar(currentIndex: _currentIndex, onTap: _onTap),
      ),
    );
  }
}
