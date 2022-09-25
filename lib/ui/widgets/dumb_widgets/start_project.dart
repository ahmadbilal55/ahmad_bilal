import 'package:ahmad_bilal/app/utils/strings.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/my_button.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class StartProject extends StatelessWidget {

  const StartProject({Key? key, required this.onTapHireAhmad, this.alignment = CrossAxisAlignment.center}) : super(key: key);
  final VoidCallback onTapHireAhmad;
  final CrossAxisAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: alignment,
      children: [
        Text(
          Strings.startProject,
          style: Theme.of(context).textTheme.headline2!.copyWith(color: Colors.white),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
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
        MyButton(onPressed: onTapHireAhmad, label: Strings.hireAhmad)
      ],
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
