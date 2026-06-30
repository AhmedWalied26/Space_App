import 'package:flutter/material.dart';
import 'package:space_app/core/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, required this.onTap});
  final String title;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: ElevatedButton(
        onPressed: () {
          onTap();
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
              const Icon(Icons.arrow_forward, color: AppColors.white, size: 24),
            ],
          ),
        ),
      ),
    );
  }
}
