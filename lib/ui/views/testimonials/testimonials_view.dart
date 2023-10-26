import 'package:ahmad_bilal/app/assets.dart';
import 'package:ahmad_bilal/app/extensions.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/screen_title.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/dumb_widgets/testimonial_widget.dart';
import 'testimonials_view_model.dart';

class TestimonialsView extends StackedView<TestimonialsViewModel> {
  const TestimonialsView({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context, TestimonialsViewModel viewModel, Widget? child) {
    return Container(
      color: context.theme.backgrounds.primary,
      width: double.infinity,
      constraints: BoxConstraints(
        minHeight: context.mediaQuery.size.height,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: ScreenTitle(title: 'Testimonials'),
          ),
          Container(
            height: 520,
            constraints: const BoxConstraints(
              maxWidth: 1400,
            ),
            child: Center(
              child: Scrollbar(
                controller: viewModel.scrollController,
                child: GridView.count(
                  controller: viewModel.scrollController,
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (int index = 0; index < testimonials.length; index++)
                      IntrinsicHeight(
                        child: TestimonialWidget(
                          testimonial: testimonials[index],
                        ),
                      )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Designed and developed with ❤️ by Ahmad Bilal",
                style: context.theme.textTheme.caption.caption1
                    .copyWith(color: context.theme.labels.secondary)),
          )
        ],
      ),
    );
  }

  @override
  void onViewModelReady(TestimonialsViewModel viewModel) {
    viewModel.onViewModelReady();
    super.onViewModelReady(viewModel);
  }

  @override
  TestimonialsViewModel viewModelBuilder(BuildContext context) =>
      TestimonialsViewModel();
}
