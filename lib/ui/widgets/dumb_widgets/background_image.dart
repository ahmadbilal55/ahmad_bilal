import 'package:ahmad_bilal/app/utils/paths.dart';
import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key,this.height = double.infinity}) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            Paths.backgroundImage,
            fit: BoxFit.cover,
          ),
          Container(
            color: Theme.of(context).backgroundColor.withOpacity(0.8),
          )
        ],
      ),
    );
  }
}
