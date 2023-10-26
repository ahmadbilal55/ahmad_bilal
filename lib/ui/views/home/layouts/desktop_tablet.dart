import 'package:ahmad_bilal/app/extensions.dart';
import 'package:ahmad_bilal/app/utils/paths.dart';
import 'package:ahmad_bilal/app/utils/strings.dart';
import 'package:ahmad_bilal/ui/views/home/home_viewmodel.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/gradient_shapes.dart';
import 'package:ahmad_bilal/ui/widgets/smart_widgets/show_up.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({Key? key, required this.model}) : super(key: key);

  final HomeViewModel model;

  @override
  Widget build(BuildContext context) {
    var screenHeight = context.mediaQuery.size.height;
    return SizedBox(
      height: screenHeight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                      ],
                    ),
                  ),
                  const AppGradientShapes(),
                ],
              ),
            ),
          ),
          Expanded(
              child: Image.asset(
            Paths.ahmadBilal,
            height: screenHeight,
            fit: BoxFit.fitHeight,
          ))
        ],
      ),
    );
  }
}
