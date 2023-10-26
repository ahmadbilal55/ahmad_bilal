import 'package:ahmad_bilal/app/extensions.dart';
import 'package:ahmad_bilal/ui/views/about_me/layouts/mobile_tablet.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import 'about_me_view_model.dart';
import 'layouts/desktop.dart';

class AboutMeView extends StackedView<AboutMeViewModel> {
  const AboutMeView({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context, AboutMeViewModel viewModel, Widget? child) {
    final screenHeight = context.mediaQuery.size.height;
    return Container(
        color: context.theme.backgrounds.secondary,
        height: screenHeight,
        width: double.infinity,
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 1200,
              minHeight: screenHeight,
            ),
            child: ScreenTypeLayout.builder(
              mobile: (context) => const AboutMeMobileTabletLayout(),
              tablet: (context) => const AboutMeMobileTabletLayout(),
              desktop: (context) => const AboutMeDesktopLayout(),
            ),
          ),
        ));
  }

  @override
  AboutMeViewModel viewModelBuilder(BuildContext context) => AboutMeViewModel();
}
