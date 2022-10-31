import 'package:ahmad_bilal/app/utils/paths.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/contact_button.dart';
import 'package:flutter/material.dart';

class ContactRow extends StatelessWidget {
  const ContactRow({
    Key? key,
    required this.onTapUpwork,
    required this.onTapLinkedIn,
    required this.onTapMedium,
    required this.onTapGitHub,
    required this.onTapStackoverflow,
  }) : super(key: key);

  final VoidCallback onTapUpwork;
  final VoidCallback onTapLinkedIn;
  final VoidCallback onTapMedium;
  final VoidCallback onTapStackoverflow;
  final VoidCallback onTapGitHub;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ContactButton(
          logoPath: Paths.upwork,
          onPressed: onTapUpwork,
        ),
        const SizedBox(
          width: 8,
        ),
        ContactButton(
          logoPath: Paths.linkedIn,
          onPressed: onTapLinkedIn,
        ),
        const SizedBox(
          width: 8,
        ),
        ContactButton(
          logoPath: Paths.medium,
          onPressed: onTapMedium,
        ),
        const SizedBox(
          width: 8,
        ),
        ContactButton(
          logoPath: Paths.stackoverflow,
          onPressed: onTapStackoverflow,
        ),
        const SizedBox(
          width: 8,
        ),
        ContactButton(
          logoPath: Paths.github,
          onPressed: onTapGitHub,
        ),
      ],
    );
  }
}
