import 'package:flutter/material.dart';
import 'package:space_app/core/app_colors.dart';
import 'package:space_app/widgets/custom_icon_button.dart';

class PlanetNavigation extends StatelessWidget {
  const PlanetNavigation({
    super.key,
    required this.currentIndex,
    required this.itemCount,
    required this.title,
    required this.controller,
  });

  final int currentIndex;
  final int itemCount;
  final String title;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          CustomIconButton(
            currentIndex: currentIndex,
            controller: controller,
            itemCount: itemCount,
          ),
          Text(
            title,
            style: TextStyle(
              color: AppColors.white,
              fontSize: 24,
              fontFamily: 'SpaceGrotesk',
              fontWeight: FontWeight.w700,
            ),
          ),
          CustomIconButton(
            isPervious: false,
            currentIndex: currentIndex,
            controller: controller,
            itemCount: itemCount,
          ),
        ],
      ),
    );
  }
}
