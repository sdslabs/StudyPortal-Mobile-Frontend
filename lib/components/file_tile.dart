import 'package:flutter/material.dart';
import 'package:studyportal/components/file_icons.dart';
import 'package:studyportal/components/more_vertical_dots.dart';
import 'package:studyportal/tools/file_type_enum.dart';

class FileTile extends StatelessWidget {
  final FileType fileType;
  final String title;
  const FileTile({super.key, required this.fileType, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 336,
      height: 48,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FileIcons(fileType: fileType),
          SizedBox(
            width: 16,
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
          ),
          const Spacer(),
          const MoreVerticalDots(),
        ],
      ),
    );
  }
}
