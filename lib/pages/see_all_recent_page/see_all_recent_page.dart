import 'package:flutter/material.dart';
import 'package:studyportal/components/file_tabs.dart';
import 'package:studyportal/components/file_tile.dart';
import 'package:studyportal/tools/file_type_enum.dart';

class SeeAllRecentPage extends StatelessWidget {
  const SeeAllRecentPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    const List<FileTile> fileTiles = [
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
      ),
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
      ),
      FileTile(
        fileType: FileType.pyqs,
        title: "This is a file tile",
      ),
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
      ),
      FileTile(
        fileType: FileType.pyqs,
        title: "This is a file tile",
      ),
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
      ),
      FileTile(
        fileType: FileType.tut,
        title: "This is a file tile",
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Recent",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              FileTabs(
                size: size,
                fileTiles: fileTiles,
                screen: "Recent",
              )
            ]),
      ),
    );
  }
}
