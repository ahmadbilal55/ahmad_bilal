import 'package:ahmad_bilal/app/utils/paths.dart';
import 'package:ahmad_bilal/app/utils/strings.dart';
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
        const Padding(
            padding: EdgeInsets.all(8.0),
            child: MyTooltip(
              message: 'Hello there!',
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  Paths.displayPictureSquare,
                ),
                radius: 50,
              ),
            )),
        Text(
          Strings.name,
          style: nameStyle??Theme.of(context).textTheme.subtitle1,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          Strings.skillIntro,
          maxLines: 2,
          textAlign: TextAlign.center,
          style: introStyle??Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }
}
