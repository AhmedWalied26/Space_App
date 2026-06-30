import 'package:flutter/material.dart';
import 'package:space_app/core/app_strings.dart';
import 'package:space_app/models/page_view_model.dart';
import 'package:space_app/views/details_view.dart';
import 'package:space_app/widgets/custom_button.dart';
import 'package:space_app/widgets/planet_navigation.dart';
import 'package:space_app/widgets/planet_page_view.dart';

class BodyExploreView extends StatefulWidget {
  const BodyExploreView({super.key});

  @override
  State<BodyExploreView> createState() => _BodyExploreViewState();
}

class _BodyExploreViewState extends State<BodyExploreView> {
  int currentIndex = 0;

  final List<PageViewModel> planetModel = [
    PageViewModel(
      image: 'assets/images/earth.png',
      image3d: 'assets/3d/earth.glb',
      title: 'Earth',
      planetTitle: AppStrings.earthTitle,
      about: AppStrings.earth,
      details: [
        AppStrings.earthDis,
        AppStrings.earthLen,
        AppStrings.earthOrb,
        AppStrings.earthRad,
        AppStrings.earthMas,
        AppStrings.earthGra,
        AppStrings.earthSur,
      ],
    ),
    PageViewModel(
      image: 'assets/images/jupiter.png',
      image3d: 'assets/3d/jupiter.glb',
      title: 'Jupiter',
      planetTitle: AppStrings.jupiterTitle,
      about: AppStrings.jupiter,
      details: [
        AppStrings.jupiterDis,
        AppStrings.jupiterLen,
        AppStrings.jupiterOrb,
        AppStrings.jupiterRad,
        AppStrings.jupiterMas,
        AppStrings.jupiterGra,
        AppStrings.jupiterSur,
      ],
    ),
    PageViewModel(
      image: 'assets/images/mars.png',
      image3d: 'assets/3d/mars.glb',
      title: 'Mars',
      planetTitle: AppStrings.marsTitle,
      about: AppStrings.mars,
      details: [
        AppStrings.marsDis,
        AppStrings.marsLen,
        AppStrings.marsOrb,
        AppStrings.marsRad,
        AppStrings.marsMas,
        AppStrings.marsGra,
        AppStrings.marsSur,
      ],
    ),
    PageViewModel(
      image: 'assets/images/mercury.png',
      image3d: 'assets/3d/mercury.glb',
      title: 'Mercury',
      planetTitle: AppStrings.mercuryTitle,
      about: AppStrings.mercury,
      details: [
        AppStrings.mercuryDis,
        AppStrings.mercuryLen,
        AppStrings.mercuryOrb,
        AppStrings.mercuryRad,
        AppStrings.mercuryMas,
        AppStrings.mercuryGra,
        AppStrings.mercurySur,
      ],
    ),
    PageViewModel(
      image: 'assets/images/neptune.png',
      image3d: 'assets/3d/neptune.glb',
      title: 'Neptune',
      planetTitle: AppStrings.neptuneTitle,
      about: AppStrings.neptune,
      details: [
        AppStrings.neptuneDis,
        AppStrings.neptuneLen,
        AppStrings.neptuneOrb,
        AppStrings.neptuneRad,
        AppStrings.neptuneMas,
        AppStrings.neptuneGra,
        AppStrings.neptuneSur,
      ],
    ),
    PageViewModel(
      image: 'assets/images/saturn.png',
      image3d: 'assets/3d/saturn.glb',
      title: 'Saturn',
      planetTitle: AppStrings.saturnTitle,
      about: AppStrings.saturn,
      details: [
        AppStrings.saturnDis,
        AppStrings.saturnLen,
        AppStrings.saturnOrb,
        AppStrings.saturnRad,
        AppStrings.saturnMas,
        AppStrings.saturnGra,
        AppStrings.saturnSur,
      ],
    ),
    PageViewModel(
      image: 'assets/images/sun.png',
      image3d: 'assets/3d/sun.glb',
      title: 'Sun',
      planetTitle: AppStrings.sunTitle,
      about: AppStrings.sun,
      details: [
        AppStrings.sunDis,
        AppStrings.sunLen,
        AppStrings.sunOrb,
        AppStrings.sunRad,
        AppStrings.sunMas,
        AppStrings.sunGra,
        AppStrings.sunSur,
      ],
    ),
    PageViewModel(
      image: 'assets/images/uranus.png',
      image3d: 'assets/3d/uranus.glb',
      title: 'Uranus',
      planetTitle: AppStrings.uranusTitle,
      about: AppStrings.uranus,
      details: [
        AppStrings.uranusDis,
        AppStrings.uranusLen,
        AppStrings.uranusOrb,
        AppStrings.uranusRad,
        AppStrings.uranusMas,
        AppStrings.uranusGra,
      ],
    ),
    PageViewModel(
      image: 'assets/images/venus.png',
      image3d: 'assets/3d/venus.glb',
      title: 'Venus',
      planetTitle: AppStrings.venusTitle,
      about: AppStrings.venus,
      details: [
        AppStrings.venusDis,
        AppStrings.venusLen,
        AppStrings.venusOrb,
        AppStrings.venusRad,
        AppStrings.venusMas,
        AppStrings.venusGra,
        AppStrings.venusSur,
      ],
    ),
  ];

  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
