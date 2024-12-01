import 'package:flutter/material.dart';
import 'package:studyportal/components/sp_bottom_navbar.dart';
import 'package:studyportal/pages/explore_page/explore_page.dart';
import 'package:studyportal/pages/home_page/home_page.dart';
import 'package:studyportal/pages/profile_page/profile_page.dart';
import 'package:studyportal/tools/theme_data.dart';

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
  Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
  };

  void _onTap(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //     textTheme: const TextTheme(titleLarge: TextStyle()),
      //     fontFamily: "Poppins",
      //     colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF263054)),
      //     scaffoldBackgroundColor: const Color(0xFFF0F1F5)),

      theme: GlobalThemeData.lightThemeData,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // body: IndexedStack(
        //   index: _currentIndex,
        //   children: _pages,
        // ),
        body: buildNavigator(),
        bottomNavigationBar:
            SPBottomNavBar(currentIndex: _currentIndex, onTap: _onTap),
      ),
    );
  }

  Navigator buildNavigator() {
    return Navigator(
      key: navigatorKeys[_currentIndex],
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute<Widget>(
            builder: (BuildContext _) => _pages.elementAt(_currentIndex));
      },
    );
  }
}
