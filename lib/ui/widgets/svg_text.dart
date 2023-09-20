import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgText extends StatelessWidget {
  final String assetPath;
  final Color color;
  final double? size;
  final String text;
  final double spacing;

  const SvgText({
    super.key,
    required this.assetPath,
    this.color = Colors.black,
    this.size,
    required this.text,
    this.spacing = 4,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          assetPath,
          width: size,
          colorFilter: ColorFilter.mode(
            color,
            BlendMode.srcIn,
          ),
        ),
        SizedBox(width: spacing),
        Text(
          text,
          style: TextStyle(color: color),
        ),
      ],
    );
  }
}
