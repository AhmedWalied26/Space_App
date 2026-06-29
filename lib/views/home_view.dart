import 'package:flutter/material.dart';
import 'package:space_app/core/app_colors.dart';
import 'package:space_app/widgets/body_home_view.dart';
import 'package:space_app/widgets/custom_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const routePath = '/';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.black,
        image: DecorationImage(
          alignment: .centerStart,
          image: AssetImage('assets/images/bg_image.png'),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(child: BodyHomeView()),
        bottomNavigationBar: CustomButton(title: 'Explore'),
      ),
    );
  }
}
