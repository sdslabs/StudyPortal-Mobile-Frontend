import 'package:flutter/material.dart';
import 'package:studyportal/components/file_scroll_section.dart';
import 'package:studyportal/components/file_tile.dart';
import 'package:studyportal/tools/file_type_enum.dart';
import 'package:studyportal/components/custom_search_bar.dart';

class FileTabs extends StatefulWidget {
  const FileTabs({
    super.key,
    required this.size,
    required this.fileTiles,
    required this.screen,
  });

  final Size size;
  final List<FileTile> fileTiles;
  final String screen;

  @override
  State<FileTabs> createState() => _FilterTabBarState();
}

class _FilterTabBarState extends State<FileTabs> with TickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 6, vsync: this);
    _focusNode.addListener(() => setState(() {
          _isFocused = _focusNode.hasFocus;
        }));
  }

  @override
  void dispose() {
    _tabController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSearchBar(
          fileTiles: widget.fileTiles,
          screen: widget.screen,
          isFocused: _isFocused,
          focusNode: _focusNode,
        ),
        if (!_isFocused)
          Container(
              child: Column(
            children: [
              TabBar(
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  controller: _tabController,
                  dividerColor: Colors.transparent,
                  indicator: const BoxDecoration(),
                  labelStyle: const TextStyle(color: Colors.white),
                  labelPadding: const EdgeInsets.symmetric(horizontal: 8),
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
                              ? const Color.fromRGBO(38, 48, 83, 1.0)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                              color: const Color(0xFFE3E2E8), width: 1)),
                      padding: const EdgeInsets.all(3),
                      width: 72,
                      height: 36,
                      alignment: Alignment.center,
                      child: const Text(
                        "All",
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: (_selectedIndex == 1)
                              ? const Color.fromRGBO(38, 48, 83, 1.0)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                              color: const Color(0xFFE3E2E8), width: 1)),
                      padding: const EdgeInsets.all(3),
                      width: 72,
                      height: 36,
                      alignment: Alignment.center,
                      child: const Text("Notes"),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: (_selectedIndex == 2)
                              ? const Color.fromRGBO(38, 48, 83, 1.0)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                              color: const Color(0xFFE3E2E8), width: 1)),
                      padding: const EdgeInsets.all(3),
                      width: 72,
                      height: 36,
                      alignment: Alignment.center,
                      child: const Text("TUTs"),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: (_selectedIndex == 3)
                              ? const Color.fromRGBO(38, 48, 83, 1.0)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                              color: const Color(0xFFE3E2E8), width: 1)),
                      padding: const EdgeInsets.all(3),
                      width: 72,
                      height: 36,
                      alignment: Alignment.center,
                      child: const Text("PYQs"),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: (_selectedIndex == 4)
                              ? const Color.fromRGBO(38, 48, 83, 1.0)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                              color: const Color(0xFFE3E2E8), width: 1)),
                      padding: const EdgeInsets.all(3),
                      width: 72,
                      height: 36,
                      alignment: Alignment.center,
                      child: const Text("Books"),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: (_selectedIndex == 5)
                              ? const Color.fromRGBO(38, 48, 83, 1.0)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                              color: const Color(0xFFE3E2E8), width: 1)),
                      padding: const EdgeInsets.all(3),
                      width: 72,
                      height: 36,
                      alignment: Alignment.center,
                      child: const Text("Links"),
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
                        size: widget.size, fileTiles: widget.fileTiles),
                  ),
                  Visibility(
                    maintainState: true,
                    visible: _selectedIndex == 1,
                    child: FileScrollSection(
                        size: widget.size,
                        fileTiles: widget.fileTiles
                            .where((fileTile) =>
                                fileTile.fileType == FileType.notes)
                            .toList()),
                  ),
                  Visibility(
                    maintainState: true,
                    visible: _selectedIndex == 2,
                    child: FileScrollSection(
                        size: widget.size,
                        fileTiles: widget.fileTiles
                            .where(
                                (fileTile) => fileTile.fileType == FileType.tut)
                            .toList()),
                  ),
                  Visibility(
                    maintainState: true,
                    visible: _selectedIndex == 3,
                    child: FileScrollSection(
                        size: widget.size,
                        fileTiles: widget.fileTiles
                            .where((fileTile) =>
                                fileTile.fileType == FileType.pyqs)
                            .toList()),
                  ),
                  Visibility(
                    maintainState: true,
                    visible: _selectedIndex == 4,
                    child: FileScrollSection(
                        size: widget.size,
                        fileTiles: widget.fileTiles
                            .where((fileTile) =>
                                fileTile.fileType == FileType.book)
                            .toList()),
                  ),
                  Visibility(
                    maintainState: true,
                    visible: _selectedIndex == 5,
                    child: FileScrollSection(
                        size: widget.size,
                        fileTiles: widget.fileTiles
                            .where((fileTile) =>
                                fileTile.fileType == FileType.link)
                            .toList()),
                  ),
                ],
              )
            ],
          ))
      ],
    );
  }
}
