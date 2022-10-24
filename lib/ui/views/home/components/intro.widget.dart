import 'package:ahmad_bilal/app/utils/strings.dart';
import 'package:ahmad_bilal/ui/widgets/smart_widgets/show_up.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
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
      child: Row(
        children: [
          const SizedBox(
            width: 16
          ),
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
          Expanded(
            child: ShowUp(
              delay: 800,
              child: Align(
                alignment: Alignment.centerRight,
                child: LottieBuilder.network(
                  'https://assets10.lottiefiles.com/packages/lf20_kkflmtur.json',
                  frameRate: FrameRate.max,
                  height: MediaQuery.of(context).size.height * 0.35,
                ),
              ),
            ),
          ),
        ],
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
        const SizedBox(
          height: 16,
        ),
        ShowUp(
          delay: 800,
          child: LottieBuilder.network(
            'https://assets10.lottiefiles.com/packages/lf20_kkflmtur.json',
            frameRate: FrameRate.max,
            height: MediaQuery.of(context).size.height * 0.35,
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
