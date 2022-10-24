import 'package:ahmad_bilal/app/utils/paths.dart';
import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key,this.height = double.infinity}) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1200),
      height: height,
      child:
      Image.asset(
        Paths.backgroundImage,
        fit: BoxFit.cover,
      ),
    );
  }
}
