import 'package:ahmad_bilal/app/extensions.dart';
import 'package:ahmad_bilal/app/utils/paths.dart';
import 'package:ahmad_bilal/app/utils/strings.dart';
import 'package:ahmad_bilal/ui/views/home/widgets/intro.widget.dart';
import 'package:ahmad_bilal/ui/views/home/home_viewmodel.dart';
import 'package:ahmad_bilal/ui/widgets/smart_widgets/show_up.dart';
import 'package:flutter/material.dart';

class DesktopTabletLayout extends StatelessWidget {
  const DesktopTabletLayout({Key? key, required this.model}) : super(key: key);

  final HomeViewModel model;

  @override
  Widget build(BuildContext context) {
    var screenHeight = context.mediaQuery.size.height;
    return SizedBox(
      height: screenHeight,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShowUp(
                    delay: 600,
                    child: Text(
                      Strings.name,
                      style: context.theme.textTheme.bigTitles.hugeTitle
                          .copyWith(
                        color: context.theme.tints.blue,
                      ),
                    ),
                  ),
                  ShowUp(
                    delay: 900,
                    child: Text(
                      Strings.skillIntro,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style:
                          context.theme.textTheme.headlines.headlineBold.copyWith(
                        color: context.theme.labels.secondary,
                      ),
                    ),
                  ),
                  const IntroWidget(),
                ],
              ),
            ),
          ),
          Expanded(child: Image.asset(Paths.ahmadBilal,height: screenHeight,))
        ],
      ),
    );
  }
}
