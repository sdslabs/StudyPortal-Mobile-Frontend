import 'package:flutter/material.dart';
import 'package:studyportal/components/file_scroll_section.dart';

class FileTabs extends StatefulWidget {
  const FileTabs({
    super.key,
    required this.size,
    required this.FileTiles,
  });

  final Size size;
  final List<Widget> FileTiles;

  @override
  State<FileTabs> createState() => _FilterTabBarState();
}

class _FilterTabBarState extends State<FileTabs> with TickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: TabBar(
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: Colors.transparent,
                indicatorPadding: const EdgeInsets.symmetric(horizontal: 5),
                labelStyle: const TextStyle(color: Colors.white),
                onTap: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                  _tabController.animateTo(index,
                      duration: const Duration(milliseconds: 500));
                },
                tabs: const [
                  // Container(
                  //     decoration: BoxDecoration(
                  //       color: (_selectedIndex==0)? Color.fromRGBO(38, 48, 83, 1.0): Colors.white,
                  //       borderRadius: BorderRadius.circular(6),
                  //     ),
                  //     width: 200,
                  //     height: 30,
                  //     child: Text("All",),
                  //     alignment: Alignment.center,
                  //   ),
                  // Container(
                  //     decoration: BoxDecoration(
                  //       color: (_selectedIndex==1)? Color.fromRGBO(38, 48, 83, 1.0): Colors.white,
                  //       borderRadius: BorderRadius.circular(6),
                  //     ),
                  //     width: 100,
                  //     height: 30,
                  //     child: Text("Notes"),
                  //     alignment: Alignment.center,
                  //   ),
                  Tab(text: "TUTS"),
                  Tab(
                    text: "PYQs",
                  ),
                  Tab(text: "Books"),
                  Tab(text: "Links"),
                ]),
          ),
          const SizedBox(
            height: 20,
          ),
          IndexedStack(
            index: _selectedIndex,
            children: [
              Visibility(
                maintainState: true,
                visible: _selectedIndex == 0,
                child: FileScrollSection(
                    size: widget.size, FileTiles: widget.FileTiles),
              ),
              Visibility(
                maintainState: true,
                visible: _selectedIndex == 1,
                child: FileScrollSection(
                    size: widget.size, FileTiles: widget.FileTiles),
              ),
              Visibility(
                maintainState: true,
                visible: _selectedIndex == 0,
                child: FileScrollSection(
                    size: widget.size, FileTiles: widget.FileTiles),
              ),
              Visibility(
                maintainState: true,
                visible: _selectedIndex == 1,
                child: FileScrollSection(
                    size: widget.size, FileTiles: widget.FileTiles),
              ),
              Visibility(
                maintainState: true,
                visible: _selectedIndex == 0,
                child: FileScrollSection(
                    size: widget.size, FileTiles: widget.FileTiles),
              ),
              Visibility(
                maintainState: true,
                visible: _selectedIndex == 1,
                child: FileScrollSection(
                    size: widget.size, FileTiles: widget.FileTiles),
              ),
            ],
          )
        ],
      ),
    );
  }
}
