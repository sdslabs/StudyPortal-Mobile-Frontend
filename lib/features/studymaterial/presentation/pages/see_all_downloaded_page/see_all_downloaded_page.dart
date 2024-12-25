import 'package:flutter/material.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/file_tabs/file_tabs.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/file_tiles/file_tile.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/tools/file_type_enum.dart';

class SeeAllDownloadedPage extends StatelessWidget {
  const SeeAllDownloadedPage({super.key});

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
            "Downloaded",
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
                screen: "Downloaded",
              )
            ]),
      ),
    );
  }
}
