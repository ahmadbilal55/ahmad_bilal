import 'package:ahmad_bilal/app/utils/paths.dart';
import 'package:ahmad_bilal/app/utils/strings.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/my_button.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'home_intro_view_model.dart';

class HomeIntroView extends StatelessWidget {
  const HomeIntroView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeIntroViewModel>.reactive(
      viewModelBuilder: () => HomeIntroViewModel(),
      builder: (context, model, child) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          width: double.infinity,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                Paths.backgroundImage,
                fit: BoxFit.cover,
              ),
              Container(
                color: Theme.of(context).backgroundColor.withOpacity(0.8),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Strings.startProject,
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              Text(
                                "I can build ",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                              AnimatedTextKit(
                                repeatForever: true,
                                animatedTexts: [
                                  buildTypewriterAnimatedText(
                                    context: context,
                                    text: 'Android Applications',
                                  ),
                                  buildTypewriterAnimatedText(
                                    context: context,
                                    text: 'iOS Applications',
                                  ),
                                  buildTypewriterAnimatedText(
                                    context: context,
                                    text: 'Web Applications',
                                  ),
                                ],
                              ),
                              Text(
                                " for you.",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          MyButton(
                              onPressed: model.sendEmail, label: Strings.hireAhmad)
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(
                            onPressed: model.openUpwork,
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Image.asset(
                                Paths.upwork,
                                color: Colors.white,
                                height: 28,
                              ),
                            ),
                            radius: 20,
                            height: 40,
                            width: 40,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          MyButton(
                            onPressed: model.openLinkedIn,
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Image.asset(
                                Paths.linkedIn,
                                color: Colors.white,
                                height: 28,
                              ),
                            ),
                            radius: 20,
                            height: 40,
                            width: 40,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          MyButton(
                            onPressed: model.openTwitter,
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Image.asset(
                                Paths.twitter,
                                height: 28,
                                color: Colors.white,
                              ),
                            ),
                            radius: 20,
                            height: 40,
                            width: 40,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          MyButton(
                            onPressed: model.openGitHub,
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Image.asset(
                                Paths.github,
                                height: 28,
                                color: Colors.white,
                              ),
                            ),
                            radius: 20,
                            height: 40,
                            width: 40,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  TypewriterAnimatedText buildTypewriterAnimatedText(
      {required BuildContext context, required String text, int speed = 30}) {
    return TypewriterAnimatedText(
      text,
      cursor: '',
      speed: Duration(milliseconds: speed),
      textStyle: const TextStyle(
        fontSize: 16,
        color: Colors.white,
      ),
    );
  }
}
