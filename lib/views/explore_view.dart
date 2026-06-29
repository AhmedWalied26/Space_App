import 'package:flutter/material.dart';
import 'package:space_app/models/page_view_model.dart';
import 'package:space_app/widgets/custom_appbar.dart';
import 'package:space_app/widgets/custom_button.dart';
import 'package:space_app/widgets/planet_navigation.dart';
import 'package:space_app/widgets/planet_page_view.dart';

class ExploreView extends StatefulWidget {
  ExploreView({super.key});

  static const routePath = 'exploreView';

  @override
  State<ExploreView> createState() => _ExploreViewState();
}

class _ExploreViewState extends State<ExploreView> {
  int currentIndex = 0;

  final List<PageViewModel> planetModel = [
    PageViewModel(image: 'assets/images/earth.png', title: 'Earth'),
    PageViewModel(image: 'assets/images/jupiter.png', title: 'Jupiter'),
    PageViewModel(image: 'assets/images/mars.png', title: 'Mars'),
    PageViewModel(image: 'assets/images/mercury.png', title: 'Mercury'),
    PageViewModel(image: 'assets/images/neptune.png', title: 'Neptune'),
    PageViewModel(image: 'assets/images/saturn.png', title: 'Saturn'),
    PageViewModel(image: 'assets/images/sun.png', title: 'Sun'),
    PageViewModel(image: 'assets/images/uranus.png', title: 'Uranus'),
    PageViewModel(image: 'assets/images/venus.png', title: 'Venus'),
  ];

  PageController controller = PageController();

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
        appBar: CustomAppbar(),
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            PlanetPageView(
              controller: controller,
              plantes: planetModel,
              onTapChanged: (index) {
                currentIndex = index;
                setState(() {});
              },
            ),
            PlanetNavigation(
              currentIndex: currentIndex,
              itemCount: planetModel.length,
              title: planetModel[currentIndex].title,
              controller: controller,
            ),
            CustomButton(title: 'Explore ${planetModel[currentIndex].title}'),
          ],
        ),
      ),
    );
  }
}
