import 'package:flutter/material.dart';
import 'package:space_app/views/details_view.dart';
import 'package:space_app/views/explore_view.dart';
import 'package:space_app/views/home_view.dart';

void main() {
  runApp(SpaceApp());
}

class SpaceApp extends StatelessWidget {
  const SpaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      routes: {
        '/': (context) => HomeView(),
        'exploreView': (context) => ExploreView(),
        'detailsView': (context) => DetailsView(),
      },
    );
  }
}
