import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PinInactive extends StatelessWidget {
  const PinInactive({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset("lib/core/svgs/pin_inactive.svg");
  }
}
