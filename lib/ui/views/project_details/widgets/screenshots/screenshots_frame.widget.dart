import 'package:flutter/cupertino.dart';

class ScreenshotsFrame extends StatelessWidget {
  final Color color;

  const ScreenshotsFrame({Key? key, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 375 / 821,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 3,
            color: color,
          ),
        ),
      ),
    );
  }
}
