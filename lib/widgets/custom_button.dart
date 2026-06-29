import 'package:flutter/material.dart';
import 'package:space_app/core/app_colors.dart';
import 'package:space_app/views/explore_view.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, ExploreView.routePath);
        },
        style: ElevatedButton.styleFrom(backgroundColor: AppColors.red),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 20,
                  fontWeight: .w600,
                  fontFamily: 'Inter',
                ),
              ),
              Icon(Icons.arrow_forward, color: AppColors.white, size: 24),
            ],
          ),
        ),
      ),
    );
  }
}
