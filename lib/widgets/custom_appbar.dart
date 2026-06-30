import 'package:flutter/material.dart';
import 'package:space_app/core/app_colors.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String subTitle;
  final double height;
  final bool hasLeading;
  const CustomAppbar({
    super.key,
    required this.title,
    required this.subTitle,
    this.height = 150,
    this.hasLeading = false,
  });

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      leading: hasLeading
          ? Padding(
              padding: const EdgeInsets.only(left: 16),
              child: CircleAvatar(
                backgroundColor: AppColors.red,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back),
                  color: AppColors.white,
                ),
              ),
            )
          : const SizedBox(),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(
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
            subTitle,
            style: const TextStyle(
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
