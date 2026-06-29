import 'package:flutter/material.dart';
import 'package:space_app/core/app_colors.dart';

class CustomIconButton extends StatelessWidget {
  final int currentIndex;
  final PageController controller;
  final bool isPervious;
  final int itemCount;
  const CustomIconButton({
    super.key,
    required this.currentIndex,
    required this.controller,
    this.isPervious = true,
    required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: isPervious
          ? currentIndex > 0
                ? () {
                    controller.previousPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                : null
          : currentIndex < itemCount
          ? () {
              controller.nextPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            }
          : null,
      icon: CircleAvatar(
        radius: 25,
        backgroundColor: AppColors.red,
        child: Icon(
          isPervious ? Icons.arrow_back : Icons.arrow_forward,
          color: AppColors.white,
        ),
      ),
    );
  }
}
