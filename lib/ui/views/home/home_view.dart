import 'package:ahmad_bilal/ui/views/home/layouts/mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';
import 'layouts/desktop_tablet.dart';

class HomeIntroView extends StatelessWidget {
  const HomeIntroView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) {
        return SafeArea(
          child: ScreenTypeLayout.builder(
               mobile: (context)=>MobileTabletLayout(model: model),
               desktop:(context)=> DesktopLayout(model: model),
               tablet: (context)=>MobileTabletLayout(model: model),
             ),
        );
      },
    );
  }
}
