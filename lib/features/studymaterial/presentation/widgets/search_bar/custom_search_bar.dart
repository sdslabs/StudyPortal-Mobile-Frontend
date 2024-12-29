import 'package:flutter/material.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/file_tiles/file_tile.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/not_found_box/not_found_box.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar(
      {super.key,
      required this.fileTiles,
      required this.screen,
      required this.isFocused,
      required this.focusNode});

  final List<FileTile> fileTiles;
  final String screen;
  final bool isFocused;
  final FocusNode focusNode;

  @override
  State<StatefulWidget> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  TextEditingController searchController = TextEditingController();

  List<FileTile> filteredList = [];
  @override
  void initState() {
    super.initState();
    filteredList = widget.fileTiles;
  }

  void _filterList(String query) {
    setState(() {
      filteredList = widget.fileTiles
          .where(
              (file) => file.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: searchController,
          focusNode: widget.focusNode,
          decoration: InputDecoration(
            hintText: "Search files in ${widget.screen}",
            hintStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(99, 102, 117, 1.0)),
            prefixIcon: SvgPicture.asset(
              "lib/core/svgs/search_icon.svg",
              fit: BoxFit.scaleDown,
            ),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide:
                    const BorderSide(color: Color(0xFFE3E2E8), width: 1)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide:
                    const BorderSide(color: Color(0xFFE3E2E8), width: 1)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide:
                    const BorderSide(color: Color(0xFFE3E2E8), width: 1)),
          ),
          onChanged: _filterList,
        ),
        const SizedBox(height: 10),
        if (widget.isFocused && filteredList.isNotEmpty)
          Container(
            padding: const EdgeInsets.only(left: 5),
            alignment: Alignment.centerLeft,
            child: Text(
              "Matching files in ${widget.screen}",
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        const SizedBox(height: 10),
        if (widget.isFocused && filteredList.isNotEmpty)
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color(0xFFE3E2E8)),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                for (int index = 0; index < filteredList.length; index++)
                  Column(
                    children: [
                      filteredList[index],
                      const SizedBox(
                        height: 13,
                      ),
                    ],
                  )
              ],
            ),
          ),
        if (widget.isFocused) const NotFoundBox(),
        if (widget.isFocused) const SizedBox(height: 20),
      ],
    );
  }
}
