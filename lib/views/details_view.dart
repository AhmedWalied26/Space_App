import 'package:flutter/material.dart';
import 'package:space_app/core/app_strings.dart';
import 'package:space_app/models/page_view_model.dart';
import 'package:space_app/widgets/custom_appbar.dart';
import 'package:space_app/widgets/text_details.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.planet});
  final PageViewModel planet;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          alignment: .topCenter,
          image: AssetImage('assets/images/bg_appbar2.png'),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppbar(
          title: planet.title,
          subTitle: planet.planetTitle,
          height: 50,
          hasLeading: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Image.asset(planet.image),
                ),
                TextDetails(title: 'About', size: 24),
                SizedBox(height: 8),
                TextDetails(
                  title: planet.about,
                  fontWeight: .w300,
                  height: 1.5,
                ),
                SizedBox(height: 15),

                TextDetails(title: planet.distance, fontWeight: .w700),
                TextDetails(title: planet.lengthOfDay, fontWeight: .w700),
                TextDetails(title: planet.orbitalPeriod, fontWeight: .w700),
                TextDetails(title: planet.radius, fontWeight: .w700),
                TextDetails(title: planet.mass, fontWeight: .w700),
                TextDetails(title: planet.gravity, fontWeight: .w700),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
