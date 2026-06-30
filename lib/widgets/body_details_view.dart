import 'package:flutter/material.dart';
import 'package:space_app/models/page_view_model.dart';
import 'package:space_app/widgets/text_details.dart';

class BodyDetailsView extends StatelessWidget {
  const BodyDetailsView({super.key, required this.planet});

  final PageViewModel planet;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            TextDetails(title: planet.about, fontWeight: .w300, height: 1.5),
            SizedBox(height: 15),
            ...planet.details.map((data) => TextDetails(title: data)),
          ],
        ),
      ),
    );
  }
}
