import 'package:flutter/material.dart';
import 'package:space_app/models/page_view_model.dart';
import 'package:space_app/widgets/body_details_view.dart';
import 'package:space_app/widgets/custom_appbar.dart';

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
        body: BodyDetailsView(planet: planet),
      ),
    );
  }
}
