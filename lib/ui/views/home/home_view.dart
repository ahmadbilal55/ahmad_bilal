import 'package:ahmad_bilal/ui/views/home/home_view_model.dart';
import 'layouts/desktop_tablet.dart';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';
import 'layouts/mobile.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: ()=>HomeViewModel(),
      builder:(context,model,_)=> Scaffold(
        backgroundColor: colorScheme.background,
        body: SafeArea(
          child: ScreenTypeLayout(
            breakpoints: const ScreenBreakpoints(tablet: 800,desktop: 1200, watch: 100),
            mobile:  MobileLayout(model: model,),
            tablet: const DesktopTabletLayout(),
            desktop: const DesktopTabletLayout(),
          ),
        ),
      ),
    );
  }

}

