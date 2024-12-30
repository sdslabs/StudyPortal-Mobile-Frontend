import 'package:flutter/material.dart';
import 'package:studyportal/features/studymaterial/domain/entities/department.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/course_card/course_card.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/department_card/department_card.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/file_tiles/file_tile.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/tools/file_type_enum.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/tools/pin_enum.dart';

class HardCodedConstants {
  static const List<FileTile> fileTiles = [
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

  static const List<DepartmentCard> departmentCards = [
    DepartmentCard(
      title: "Electrical",
      subtitle: "This is the subtitle\nabab\nababa",
      themeColor: Color(0xFF0D891B),
      pin: Pin.none,
    ),
    DepartmentCard(
      title: "Mechanical",
      subtitle: "This is the",
      themeColor: Color(0xFFCF4141),
      pin: Pin.none,
    ),
    DepartmentCard(
      title: "Mathematics",
      subtitle: "This is the subtitle",
      themeColor: Colors.deepPurple,
      pin: Pin.none,
    ),
    DepartmentCard(
      title: "Architecture",
      subtitle: "Introduction to the electrical world",
      themeColor: Color(0xFF20284C),
      pin: Pin.none,
    ),
  ];

  static List<CourseCard> courseCards = departmentCards.map((deptCard) {
    return CourseCard(
      title: "Course Title Placeholder", // Dummy value for course title
      subtitle:
          "Course Subtitle Placeholder", // Dummy value for course subtitle
      pin: Pin.inactive, // Dummy value for pin
      department: Department(
        title: deptCard.title,
        subtitle: deptCard.subtitle,
        themeColor: deptCard.themeColor,
      ),
    );
  }).toList();

  static const List<FileTile> recentTiles = [
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
    )
  ];

  static const List<FileTile> bookmarkedTiles = [
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
    )
  ];

  static const List<FileTile> downloadedTiles = [
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
    )
  ];
}
