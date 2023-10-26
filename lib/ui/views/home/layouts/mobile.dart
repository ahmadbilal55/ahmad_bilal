import 'package:ahmad_bilal/app/extensions.dart';
import 'package:ahmad_bilal/app/utils/paths.dart';
import 'package:ahmad_bilal/app/utils/strings.dart';
import 'package:ahmad_bilal/ui/views/home/home_viewmodel.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/gradient_shapes.dart';
import 'package:ahmad_bilal/ui/widgets/smart_widgets/show_up.dart';
import 'package:flutter/material.dart';

class MobileTabletLayout extends StatelessWidget {
  const MobileTabletLayout({Key? key, required this.model}) : super(key: key);

  final HomeViewModel model;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ShowUp(
              delay: 600,
              child: Text(
                Strings.name,
                style: context.theme.textTheme.bigTitles.hugeTitle
                    .copyWith(
                  color: context.theme.tints.blue,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child:
            ShowUp(
              delay: 1200,
              child: Text(
                Strings.catchPhrase,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: context.theme.textTheme.headlines.headline
                    .copyWith(
                  color: context.theme.labels.primary,
                  letterSpacing: 2,
                ),
              ),
            ),
          ),
          Expanded(child: Stack(
            children: [
              const Align(alignment:Alignment.bottomLeft,child: AppGradientShapes()),
              Align(alignment: Alignment.bottomCenter,child: Image.asset(Paths.ahmadBilal)),
            ],
          ))
        ],
      ),
    );
  }
}
