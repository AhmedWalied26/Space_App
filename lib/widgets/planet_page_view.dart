import 'package:flutter/material.dart';
import 'package:space_app/models/page_view_model.dart';

class PlanetPageView extends StatelessWidget {
  final Function(int) onTapChanged;
  final List<PageViewModel> plantes;
  final PageController controller;

  const PlanetPageView({
    super.key,
    required this.controller,
    required this.onTapChanged,
    required this.plantes,
  });
  final int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: controller,
        onPageChanged: onTapChanged,
        itemCount: plantes.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Image.asset(plantes[index].image),
          );
        },
      ),
    );
  }
}
