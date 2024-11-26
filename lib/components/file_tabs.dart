import 'package:flutter/material.dart';
import 'package:studyportal/components/file_scroll_section.dart';
import 'package:studyportal/components/file_tile.dart';
import 'package:studyportal/tools/file_type_enum.dart';

class FileTabs extends StatefulWidget {
  const FileTabs({
    super.key,
    required this.size,
    required this.FileTiles,
  });

  final Size size;
  final List<FileTile> FileTiles;

  @override
  State<FileTabs> createState() => _FilterTabBarState();
}

class _FilterTabBarState extends State<FileTabs> with TickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 6, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
// Implement search
  @override
  Widget build(BuildContext context) {
      return Column(
        children: [
          TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              controller: _tabController,
              dividerColor: Colors.transparent,
              indicator: BoxDecoration(),
              labelStyle: const TextStyle(color: Colors.white),
              labelPadding: EdgeInsets.symmetric(horizontal: 8),
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });
                _tabController.animateTo(index,
                    duration: const Duration(milliseconds: 500));
              },
              tabs: [
                Container(
                  decoration: BoxDecoration(
                    color: (_selectedIndex == 0)
                        ? Color.fromRGBO(38, 48, 83, 1.0)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Color(0xFFE3E2E8), width: 1)
                  ),
                  padding: EdgeInsets.all(3),
                  width: 72,
                  height: 36,
                  alignment: Alignment.center,
                  child: Text(
                    "All",
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: (_selectedIndex == 1)
                        ? Color.fromRGBO(38, 48, 83, 1.0)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Color(0xFFE3E2E8), width: 1)
                  ),
                  padding: EdgeInsets.all(3),
                  width: 72,
                  height: 36,
                  alignment: Alignment.center,
                  child: Text("Notes"),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: (_selectedIndex == 2)
                        ? Color.fromRGBO(38, 48, 83, 1.0)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Color(0xFFE3E2E8), width: 1)
                  ),
                  padding: EdgeInsets.all(3),
                  width: 72,
                  height: 36,
                  alignment: Alignment.center,
                  child: Text("TUTs"),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: (_selectedIndex == 3)
                        ? Color.fromRGBO(38, 48, 83, 1.0)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Color(0xFFE3E2E8), width: 1)
                  ),
                  padding: EdgeInsets.all(3),
                  width: 72,
                  height: 36,
                  alignment: Alignment.center,
                  child: Text("PYQs"),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: (_selectedIndex == 4)
                        ? Color.fromRGBO(38, 48, 83, 1.0)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Color(0xFFE3E2E8), width: 1)
                  ),
                  padding: EdgeInsets.all(3),
                  width: 72,
                  height: 36,
                  alignment: Alignment.center,
                  child: Text("Books"),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: (_selectedIndex == 5)
                        ? Color.fromRGBO(38, 48, 83, 1.0)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Color(0xFFE3E2E8), width: 1)
                  ),
                  padding: EdgeInsets.all(3),
                  width: 72,
                  height: 36,
                  alignment: Alignment.center,
                  child: Text("Links"),
                ),
              ]),
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
                    size: widget.size, FileTiles: widget.FileTiles.where((fileTile) => fileTile.fileType == FileType.notes).toList()),
              ),
              Visibility(
                maintainState: true,
                visible: _selectedIndex == 2,
                child: FileScrollSection(
                    size: widget.size, FileTiles: widget.FileTiles.where((fileTile) => fileTile.fileType == FileType.tut).toList()),
              ),
              Visibility(
                maintainState: true,
                visible: _selectedIndex == 3,
                child: FileScrollSection(
                    size: widget.size, FileTiles: widget.FileTiles.where((fileTile) => fileTile.fileType == FileType.pyqs).toList()),
              ),
              Visibility(
                maintainState: true,
                visible: _selectedIndex == 4,
                child: FileScrollSection(
                    size: widget.size, FileTiles: widget.FileTiles.where((fileTile) => fileTile.fileType == FileType.book).toList()),
              ),
              Visibility(
                maintainState: true,
                visible: _selectedIndex == 5,
                child: FileScrollSection(
                    size: widget.size, FileTiles: widget.FileTiles.where((fileTile) => fileTile.fileType == FileType.link).toList()),
              ),
            ],
          )
        ],
      );
  }
}
