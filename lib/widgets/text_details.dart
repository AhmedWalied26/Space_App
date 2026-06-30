import 'package:flutter/material.dart';
import 'package:space_app/core/app_colors.dart';

class TextDetails extends StatelessWidget {
  final String title;
  final double height;
  final FontWeight fontWeight;
  final double size;
  const TextDetails({
    super.key,
    required this.title,
    this.fontWeight = .w700,
    this.size = 16,
    this.height = 3,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        height: height,
        color: AppColors.white,
        fontFamily: 'SpaceGrotesk',
        fontWeight: fontWeight,
        fontSize: size,
      ),
    );
  }
}
