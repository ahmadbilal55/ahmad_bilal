import 'package:ahmad_bilal/app/extensions.dart';
import 'package:ahmad_bilal/app/utils/paths.dart';
import 'package:ahmad_bilal/app/utils/strings.dart';
import 'package:ahmad_bilal/ui/views/home/widgets/intro.widget.dart';
import 'package:ahmad_bilal/ui/widgets/smart_widgets/show_up.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'my_tooltip.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    Key? key,
    this.nameStyle,
    this.introStyle,
  }) : super(key: key);

  final TextStyle? nameStyle;
  final TextStyle? introStyle;

  @override
  Widget build(BuildContext context) {
    final radius = getValueForScreenType<double>(
      context: context,
      mobile: 50,
      desktop: 70,
      tablet: 70,
    );

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            children: [
              ShowUp(
                delay: 600,
                child: Text(
                  Strings.name,
                  style: nameStyle ??
                      context.theme.textTheme.bigTitles.largeTitleBold.copyWith(
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
        Expanded(
          child: ShowUp(
            delay: 300,
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyTooltip(
                  message: 'Hello there!',
                  child: Image.asset(
                    Paths.ahmadBilal,
                    height: MediaQuery.sizeOf(context).height,
                  ),
                )),
          ),
        )
      ],
    );
  }
}
