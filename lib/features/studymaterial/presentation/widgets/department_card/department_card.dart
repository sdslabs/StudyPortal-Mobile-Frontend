import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studyportal/features/studymaterial/domain/entities/department.dart';
import 'package:studyportal/features/studymaterial/presentation/pages/course_list_page/course_list_page.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/bookmarked_pin/pin_active.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/bookmarked_pin/pin_inactive.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/tools/pin_enum.dart';

class DepartmentCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color themeColor;
  final Pin pin;
  final VoidCallback? onTap;

  const DepartmentCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.themeColor,
      required this.pin,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ??
          () {
            Navigator.push(
              context,
              CourseListPage.route(Department(
                  title: title, subtitle: subtitle, themeColor: themeColor)),
            );
          },
      child: Container(
        width: 160,
        height: 160,
        padding: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
            color: themeColor, borderRadius: BorderRadius.circular(12)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Column(
            children: [
              Stack(
                children: [
                  Opacity(
                    opacity: 1,
                    child: SvgPicture.asset(
                      "lib/core/svgs/card_design.svg",
                      colorFilter: const ColorFilter.mode(
                          Colors.white38, BlendMode.srcIn),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        child: (pin == Pin.inactive)
                            ? const PinInactive()
                            : (pin == Pin.active)
                                ? const SizedBox(child: PinActive())
                                : const Opacity(opacity: 0),
                      ))
                ],
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.only(left: 16),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
