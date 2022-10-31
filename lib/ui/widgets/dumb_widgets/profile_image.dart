import 'package:ahmad_bilal/app/utils/paths.dart';
import 'package:ahmad_bilal/app/utils/strings.dart';
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

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ShowUp(
          delay: 300,
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyTooltip(
                message: 'Hello there!',
                child: CircleAvatar(
                  backgroundImage: const AssetImage(
                    Paths.displayPictureSquare,
                  ),
                  radius: radius,
                ),
              )),
        ),
        ShowUp(
          delay: 600,
          child: Text(
            Strings.name,
            style: nameStyle ?? Theme.of(context).textTheme.headline2,
          ),
        ),
        ShowUp(
          delay: 900,
          child: Text(
            Strings.skillIntro,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ],
    );
  }
}
