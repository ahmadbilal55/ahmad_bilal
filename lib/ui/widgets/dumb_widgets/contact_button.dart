import 'package:ahmad_bilal/ui/widgets/dumb_widgets/MyOutlinedButton.dart';
import 'package:flutter/material.dart';


class ContactButton extends StatelessWidget {
  const ContactButton({Key? key, required this.logoPath, required this.onPressed}) : super(key: key);

  final String logoPath;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    var child = Padding(
          padding: const EdgeInsets.all(4),
          child: Image.asset(
            logoPath,
            color: Colors.white,
            height: 24,
          ),
        );
    return MyOutlinedButton(
      onPressed: onPressed,
      child: child,
      radius: 20,
      height: 40,
      width: 40,
    );
  }
}
