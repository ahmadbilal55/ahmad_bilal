import 'package:ahmad_bilal/app/utils/paths.dart';
import 'package:ahmad_bilal/app/utils/strings.dart';
import 'package:ahmad_bilal/ui/widgets/smart_widgets/show_up.dart';
import 'package:flutter/material.dart';

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

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const ShowUp(
          delay: 300,
          child: Padding(
              padding: EdgeInsets.all(8.0),
              child: MyTooltip(
                message: 'Hello there!',
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    Paths.displayPictureSquare,
                  ),
                  radius: 70,
                ),
              )),
        ),
        ShowUp(
          delay: 600,
          child: Text(
            Strings.name,
            style: nameStyle??Theme.of(context).textTheme.headline2,
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
