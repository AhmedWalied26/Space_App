import 'package:flutter/material.dart';
import 'package:space_app/core/app_strings.dart';
import 'package:space_app/models/page_view_model.dart';
import 'package:space_app/views/details_view.dart';
import 'package:space_app/widgets/custom_appbar.dart';
import 'package:space_app/widgets/custom_button.dart';
import 'package:space_app/widgets/planet_navigation.dart';
import 'package:space_app/widgets/planet_page_view.dart';

class ExploreView extends StatefulWidget {
  const ExploreView({super.key});

  static const routePath = 'exploreView';

  @override
  State<ExploreView> createState() => _ExploreViewState();
}

class _ExploreViewState extends State<ExploreView> {
  int currentIndex = 0;

  final List<PageViewModel> planetModel = [
    PageViewModel(
      image: 'assets/images/earth.png',
      title: 'Earth',
      planetTitle: AppStrings.earthTitle,
      about: AppStrings.earth,
      distance: AppStrings.earthDis,
      lengthOfDay: AppStrings.earthLen,
      orbitalPeriod: AppStrings.earthOrb,
      radius: AppStrings.earthRad,
      mass: AppStrings.earthMas,
      gravity: AppStrings.earthGra,
      surfaceArea: AppStrings.earthSur,
    ),
    PageViewModel(
      image: 'assets/images/jupiter.png',
      title: 'Jupiter',
      planetTitle: AppStrings.jupiterTitle,
      about: AppStrings.jupiter,
      distance: AppStrings.jupiterDis,
      lengthOfDay: AppStrings.jupiterLen,
      orbitalPeriod: AppStrings.jupiterOrb,
      radius: AppStrings.jupiterRad,
      mass: AppStrings.jupiterMas,
      gravity: AppStrings.jupiterGra,
      surfaceArea: AppStrings.jupiterSur,
    ),
    PageViewModel(
      image: 'assets/images/mars.png',
      title: 'Mars',
      planetTitle: AppStrings.marsTitle,
      about: AppStrings.mars,
      distance: AppStrings.marsDis,
      lengthOfDay: AppStrings.marsLen,
      orbitalPeriod: AppStrings.marsOrb,
      radius: AppStrings.marsRad,
      mass: AppStrings.marsMas,
      gravity: AppStrings.marsGra,
      surfaceArea: AppStrings.marsSur,
    ),
    PageViewModel(
      image: 'assets/images/mercury.png',
      title: 'Mercury',
      planetTitle: AppStrings.mercuryTitle,
      about: AppStrings.mercury,
      distance: AppStrings.mercuryDis,
      lengthOfDay: AppStrings.mercuryLen,
      orbitalPeriod: AppStrings.mercuryOrb,
      radius: AppStrings.mercuryRad,
      mass: AppStrings.mercuryMas,
      gravity: AppStrings.mercuryGra,
      surfaceArea: AppStrings.mercurySur,
    ),
    PageViewModel(
      image: 'assets/images/neptune.png',
      title: 'Neptune',
      planetTitle: AppStrings.neptuneTitle,
      about: AppStrings.neptune,
      distance: AppStrings.neptuneDis,
      lengthOfDay: AppStrings.neptuneLen,
      orbitalPeriod: AppStrings.neptuneOrb,
      radius: AppStrings.neptuneRad,
      mass: AppStrings.neptuneMas,
      gravity: AppStrings.neptuneGra,
      surfaceArea: AppStrings.neptuneSur,
    ),
    PageViewModel(
      image: 'assets/images/saturn.png',
      title: 'Saturn',
      planetTitle: AppStrings.saturnTitle,
      about: AppStrings.saturn,
      distance: AppStrings.saturnDis,
      lengthOfDay: AppStrings.saturnLen,
      orbitalPeriod: AppStrings.saturnOrb,
      radius: AppStrings.saturnRad,
      mass: AppStrings.saturnMas,
      gravity: AppStrings.saturnGra,
      surfaceArea: AppStrings.saturnSur,
    ),
    PageViewModel(
      image: 'assets/images/sun.png',
      title: 'Sun',
      planetTitle: AppStrings.sunTitle,
      about: AppStrings.sun,
      distance: AppStrings.sunDis,
      lengthOfDay: AppStrings.sunLen,
      orbitalPeriod: AppStrings.sunOrb,
      radius: AppStrings.sunRad,
      mass: AppStrings.sunMas,
      gravity: AppStrings.sunGra,
      surfaceArea: AppStrings.sunSur,
    ),
    PageViewModel(
      image: 'assets/images/uranus.png',
      title: 'Uranus',
      planetTitle: AppStrings.uranusTitle,
      about: AppStrings.uranus,
      distance: AppStrings.uranusDis,
      lengthOfDay: AppStrings.uranusLen,
      orbitalPeriod: AppStrings.uranusOrb,
      radius: AppStrings.uranusRad,
      mass: AppStrings.uranusMas,
      gravity: AppStrings.uranusGra,
      surfaceArea: AppStrings.uranusSur,
    ),
    PageViewModel(
      image: 'assets/images/venus.png',
      title: 'Venus',
      planetTitle: AppStrings.venusTitle,
      about: AppStrings.venus,
      distance: AppStrings.venusDis,
      lengthOfDay: AppStrings.venusLen,
      orbitalPeriod: AppStrings.venusOrb,
      radius: AppStrings.venusRad,
      mass: AppStrings.venusMas,
      gravity: AppStrings.venusGra,
      surfaceArea: AppStrings.venusSur,
    ),
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
        appBar: CustomAppbar(
          title: 'Explore',
          subTitle: 'Which planet\nwould you like to explore?',

          height: 150,
        ),
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
            CustomButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return DetailsView(planet: planetModel[currentIndex]);
                    },
                  ),
                );
              },
              title: 'Explore ${planetModel[currentIndex].title}',
            ),
          ],
        ),
      ),
    );
  }
}
