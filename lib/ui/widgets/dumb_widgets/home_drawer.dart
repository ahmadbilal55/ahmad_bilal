import 'package:ahmad_bilal/app/assets.dart';
import 'package:ahmad_bilal/app/utils/strings.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/my_tooltip.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/testimonial_widget.dart';
import 'package:flutter/material.dart';

import 'package:ahmad_bilal/app/utils/paths.dart';
import 'animated_circle.dart';
import 'info_text.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Drawer(
      width: 300,
      backgroundColor: colorScheme.background,
      child: SingleChildScrollView(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.23,
              child: Container(
                padding: const EdgeInsets.all(16),
                color: colorScheme.surface,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Spacer(
                      flex: 2,
                    ),
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
                    const Spacer(),
                    Text(
                      Strings.name,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      Strings.skillIntro,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.caption,
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
              child: InfoText(
                title: Strings.nationality,
                value: Strings.pakistan,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
              child: InfoText(
                title: Strings.city,
                value: Strings.islamabad,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
              child: InfoText(
                title: Strings.age,
                value: Strings.ageNumber,
              ),
            ),
            const Padding(padding: EdgeInsets.all(8.0), child: Divider()),
            Text(
              Strings.about,
              style: Theme.of(context).textTheme.headline1,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
              child: Text(
                Strings.intro,
                style: Theme.of(context).textTheme.caption,
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(padding: EdgeInsets.all(8.0), child: Divider()),
            Text(
              Strings.skills,
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(height: 16),
            Row(
              children: const [
                SizedBox(width: 16),
                Expanded(
                  child: AnimatedCircle(
                    iconPath: Paths.flutter,
                    label: 'Flutter',
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: AnimatedCircle(
                    iconPath: Paths.android,
                    label: 'Android',
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: AnimatedCircle(
                    iconPath: Paths.firebase,
                    label: 'Firebase',
                  ),
                ),
                SizedBox(width: 16),
              ],
            ),
            const Padding(padding: EdgeInsets.all(8.0), child: Divider()),
            Text(
              Strings.testimonials,
              style: Theme.of(context).textTheme.headline1,
            ),
            for (final testimonial in testimonials)
              TestimonialWidget(
                testimonial: testimonial,
                border: Border(
                    bottom: BorderSide(
                  color: Theme.of(context).dividerColor,
                )),
              ),
            const SizedBox(
              height: 8,
            )
          ],
        ),
      ),
    );
  }
}
