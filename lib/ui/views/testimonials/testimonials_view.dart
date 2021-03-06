import 'package:ahmad_bilal/app/assets.dart';
import 'package:ahmad_bilal/app/utils/strings.dart';
import 'package:ahmad_bilal/ui/views/testimonials/testimonials_viewmodel.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/screen_title.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stacked/stacked.dart';

class TestimonialsView extends StatelessWidget {
  const TestimonialsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TestimonialsViewModel>.reactive(
      builder: (context, model, child) => ScreenTypeLayout(
        mobile: buildLayout(
          context,
          model,
        ),
        desktop: buildLayout(context, model),
        tablet: buildLayout(context, model),
      ),
      viewModelBuilder: () => TestimonialsViewModel(),
    );
  }

  Widget buildLayout(BuildContext context, TestimonialsViewModel model) {
    final screenHeight = MediaQuery.of(context).size.height;
    final maxTestimonyLines = getValueForScreenType(
        context: context, mobile: 6, desktop: 9, tablet: 6);
    final starSize = getValueForScreenType<double>(
        context: context, mobile: 16, desktop: 20, tablet: 18);
    final sliderHeight = getValueForScreenType<double>(
        context: context, mobile: 260, desktop: 320, tablet: 290);
    final viewPortFraction = getValueForScreenType<double>(
        context: context, mobile: 0.8, desktop: 0.3, tablet: 0.5);

    return Container(
      constraints: BoxConstraints(minHeight: screenHeight * 0.8),
      color: Theme.of(context).backgroundColor,
      child: Column(
        children: [
          const ScreenTitle(
            title: Strings.testimonials,
            dark: true,
            margin: EdgeInsets.all(16),
          ),
          CarouselSlider.builder(
            carouselController: model.controller,
            itemCount: testimonials.length,
            options: CarouselOptions(
              onPageChanged: model.onPageChanged,
              scrollPhysics: const BouncingScrollPhysics(),
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 15),
              enlargeCenterPage: true,
              viewportFraction: viewPortFraction,
              height: sliderHeight,
            ),
            itemBuilder: (context, index, _) =>
                index - model.currentIndex == 2 ||
                        index - model.currentIndex == -2
                    ? const SizedBox()
                    : Opacity(
                        opacity: index == model.currentIndex ? 1 : 0.8,
                        child: Container(
                          margin: const EdgeInsets.all(16),
                          padding: const EdgeInsets.all(16),
                          decoration:  BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context).shadowColor,
                                blurRadius: 12,
                                spreadRadius: 8,
                              )
                            ],
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(testimonials[index].clientName,
                                  style: Theme.of(context).textTheme.headline5),
                              const SizedBox(
                                height: 8,
                              ),
                              AutoSizeText(
                                testimonials[index].testimony,
                                maxLines: maxTestimonyLines,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              if (testimonials[index].rating != null)
                                RatingStars(
                                  value: testimonials[index].rating!,
                                  maxValue: 5,
                                  starSize: starSize,
                                  valueLabelVisibility: false,
                                ),
                            ],
                          ),
                        ),
                      ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () => model.moveForward(false),
                icon: const Icon(Icons.arrow_back_ios),
                color: Theme.of(context).dividerColor,
              ),
              const SizedBox(
                width: 16,
              ),
              AnimatedSmoothIndicator(
                activeIndex: model.currentIndex,
                count: testimonials.length,
                effect:  ColorTransitionEffect(
                    dotHeight: 12,
                    dotWidth: 12,
                    activeDotColor: Theme.of(context).primaryColor,
                    dotColor: Theme.of(context).dividerColor),
              ),
              const SizedBox(
                width: 16,
              ),
              IconButton(
                onPressed: () => model.moveForward(true),
                icon: const Icon(Icons.arrow_forward_ios),
                color: Theme.of(context).dividerColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}
