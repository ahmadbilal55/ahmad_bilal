import 'package:ahmad_bilal/app/utils/paths.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/my_button.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({
    Key? key,
    required this.onTapUpwork,
    required this.onTapLinkedIn,
    required this.onTapTwitter,
    required this.onTapGitHub,
  }) : super(key: key);

  final VoidCallback onTapUpwork;
  final VoidCallback onTapLinkedIn;
  final VoidCallback onTapTwitter;
  final VoidCallback onTapGitHub;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        MyButton(
          onPressed: onTapUpwork,
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
          onPressed: onTapLinkedIn,
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
          onPressed: onTapTwitter,
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
          onPressed: onTapGitHub,
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
    );
  }
}
