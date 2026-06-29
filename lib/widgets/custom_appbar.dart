import 'package:flutter/material.dart';
import 'package:space_app/core/app_colors.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 150);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Text(
        'Explore',
        style: TextStyle(
          fontSize: 24,
          color: AppColors.white,
          fontWeight: FontWeight.w700,
          fontFamily: 'SpaceGrotesk',
        ),
      ),
      bottom: PreferredSize(
        preferredSize: preferredSize,
        child: Container(
          alignment: .topStart,
          margin: EdgeInsets.only(left: 16),
          child: Text(
            'Which planet\nwould you like to explore?',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontFamily: 'SpaceGrotesk',
              color: AppColors.white,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
