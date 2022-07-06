import 'package:ahmad_bilal/ui/views/home_intro/layouts/mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';
import 'home_intro_view_model.dart';
import 'layouts/desktop_tablet.dart';

class HomeIntroView extends StatelessWidget {
  const HomeIntroView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeIntroViewModel>.reactive(
      viewModelBuilder: () => HomeIntroViewModel(),
      builder: (context, model, child) {
        return SafeArea(
          child: ScreenTypeLayout(
            breakpoints: const ScreenBreakpoints(tablet: 800,desktop: 1200, watch: 100),
            mobile: MobileLayout(model: model),
            desktop: DesktopTabletLayout(model: model),
            tablet: DesktopTabletLayout(model: model),
          ),
        );
      },
    );
  }
}
