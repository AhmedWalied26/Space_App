import 'package:flutter/material.dart';
import 'package:space_app/widgets/body_explore_view.dart';
import 'package:space_app/widgets/custom_appbar.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  static const routePath = 'exploreView';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          alignment: .topCenter,
          image: AssetImage('assets/images/bg_appbar.png'),
        ),
      ),
      child: Scaffold(
        appBar: CustomAppbar(
          title: 'Explore',
          subTitle: 'Which planet\nwould you like to explore?',
          height: 150,
        ),
        backgroundColor: Colors.transparent,
        body: BodyExploreView(),
      ),
    );
  }
}
