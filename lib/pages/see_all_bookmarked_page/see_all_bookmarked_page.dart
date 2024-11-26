import 'package:flutter/material.dart';
import 'package:studyportal/components/file_tabs.dart';
import 'package:studyportal/components/file_tile.dart';
import 'package:studyportal/tools/file_type_enum.dart';

class SeeAllBookmarkedPage extends StatelessWidget {
  const SeeAllBookmarkedPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    const List<FileTile> FileTiles = [
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
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 20, top: 20),
                    width: size.width,
                    height: 50,
                    child: const Row(
                      children: [
                        Text(
                          "Bookmarked",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 24),
                        ),
                        Spacer()
                      ],
                    ),
                  ),
                  FileTabs(size: size, FileTiles: FileTiles)
                ])),
      ),
    );
  }
}
