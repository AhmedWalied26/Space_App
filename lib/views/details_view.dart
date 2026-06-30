import 'package:flutter/material.dart';
import 'package:space_app/core/app_strings.dart';
import 'package:space_app/widgets/custom_appbar.dart';
import 'package:space_app/widgets/text_details.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({super.key});

  static const routePath = 'detailsView';

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
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
          title: 'Earth: Our Blue Marble',
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
                  child: Image.asset('assets/images/earth.png'),
                ),
                TextDetails(title: 'About', size: 24),
                SizedBox(height: 8),
                TextDetails(
                  title: AppStrings.earth,
                  fontWeight: .w300,
                  height: 1.5,
                ),
                SizedBox(height: 15),

                TextDetails(title: AppStrings.earthDis, fontWeight: .w700),
                TextDetails(title: AppStrings.earthLen, fontWeight: .w700),
                TextDetails(title: AppStrings.earthRad, fontWeight: .w700),
                TextDetails(title: AppStrings.earthMas, fontWeight: .w700),
                TextDetails(title: AppStrings.earthGra, fontWeight: .w700),
                TextDetails(title: AppStrings.earthSur, fontWeight: .w700),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
