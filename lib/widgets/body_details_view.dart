import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import 'package:space_app/core/app_colors.dart';
import 'package:space_app/models/page_view_model.dart';
import 'package:space_app/widgets/text_details.dart';

class BodyDetailsView extends StatefulWidget {
  const BodyDetailsView({super.key, required this.planet});

  final PageViewModel planet;

  @override
  State<BodyDetailsView> createState() => _BodyDetailsViewState();
}

class _BodyDetailsViewState extends State<BodyDetailsView> {
  bool isLoaded = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: .center,
              children: [
                SizedBox(
                  height: 350,
                  child: Flutter3DViewer(
                    onLoad: (modelAddress) {
                      setState(() {
                        isLoaded = true;
                      });
                    },
                    src: widget.planet.image3d,
                  ),
                ),
                if (!isLoaded) CircularProgressIndicator(color: AppColors.red),
              ],
            ),
            const TextDetails(title: 'About', size: 24),
            const SizedBox(height: 8),
            TextDetails(
              title: widget.planet.about,
              fontWeight: .w300,
              height: 1.5,
            ),
            const SizedBox(height: 15),
            ...widget.planet.details.map((data) => TextDetails(title: data)),
          ],
        ),
      ),
    );
  }
}
