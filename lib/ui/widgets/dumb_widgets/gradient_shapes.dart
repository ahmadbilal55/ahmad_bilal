import 'package:ahmad_bilal/app/extensions.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/triange_shape.dart';
import 'package:flutter/material.dart';

class AppGradientShapes extends StatelessWidget {
  const AppGradientShapes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    context.theme.tints.blue,
                    context.theme.tints.red,
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: LinearGradient(
                  colors: [
                    context.theme.tints.orange,
                    context.theme.tints.yellow,
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            TriangleShapeWidget(
              gradient: LinearGradient(
                colors: [
                  context.theme.tints.purple,
                  context.theme.tints.pink,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
