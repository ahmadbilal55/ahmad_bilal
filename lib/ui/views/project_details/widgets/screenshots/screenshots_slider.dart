import 'package:ahmad_bilal/ui/views/project_details/project_details_viewmodel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ScreenshotsSlider extends StatelessWidget {
  const ScreenshotsSlider({Key? key, required this.model, required this.screenshots}) : super(key: key);

  final ProjectDetailsViewModel model;
  final List<String> screenshots;

  @override
  Widget build(BuildContext context) {
    double viewPortFraction = getValueForScreenType(
      context: context,
      mobile: 1,
      tablet: 1 / 3,
      desktop: 1 / 5,
    );
    final screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth,
      child: CarouselSlider(
        carouselController: model.carouselController,
        items: [
          for (int index = 0; index < screenshots.length; index++)
            AspectRatio(
              aspectRatio: 375 / 821,
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.asset(
                    screenshots[index],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
        ],
        options: CarouselOptions(
          aspectRatio: 375 / 821,
          viewportFraction: viewPortFraction,
          enableInfiniteScroll: true,
          autoPlay: true,
          scrollPhysics: const NeverScrollableScrollPhysics(),
          onPageChanged: model.onPageChanged,
          initialPage: 0,
          pageSnapping: false,
        ),
      ),
    );
  }
}
