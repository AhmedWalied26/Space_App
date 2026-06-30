import 'package:flutter/material.dart';
import 'package:space_app/core/app_colors.dart';

class BodyHomeView extends StatelessWidget {
  const BodyHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Align(
        alignment: .centerStart,
        child: Text(
          'Explore\nThe\nUniverse',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 48,
            fontWeight: .w900,
            fontFamily: 'Inter',
          ),
        ),
      ),
    );
  }
}
