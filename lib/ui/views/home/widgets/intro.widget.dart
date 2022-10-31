import 'package:ahmad_bilal/app/utils/strings.dart';
import 'package:ahmad_bilal/ui/widgets/smart_widgets/show_up.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({
    Key? key,
    this.introTextAlign = TextAlign.start,
  }) : super(key: key);

  final TextAlign introTextAlign;

  @override
  Widget build(BuildContext context) {
    final desktopLayout = ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 1200),
      child: ShowUp(
        delay: 400,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Text(
            Strings.intro,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(fontWeight: FontWeight.w500, fontSize: 24),
          ),
        ),
      ),
    );

    final mobileLayout = Column(
      children: [
        ShowUp(
          delay: 400,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: Text(
              Strings.intro,
              textAlign: introTextAlign,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
        ),
      ],
    );
    return ScreenTypeLayout(
      mobile: mobileLayout,
      desktop: desktopLayout,
      tablet: desktopLayout,
    );
  }
}
