import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PinActive extends StatelessWidget {
  const PinActive({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset("lib/core/svgs/pin_active.svg");
  }
}
