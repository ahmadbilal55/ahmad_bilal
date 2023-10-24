import 'package:ahmad_bilal/app/extensions.dart';
import 'package:flutter/material.dart';

class AndWidget extends StatelessWidget {
  const AndWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                height: 1,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: context.theme.keyGray,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            Text(
              "AND",
              style: context.theme.textTheme.subHeadlines.subHeadlineSemiBold
                  .copyWith(
                color: context.theme.keyGray,
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                height: 1,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: context.theme.keyGray,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          "I built this website using Flutter.",
          style: context.theme.textTheme.body.bodySemiBold.copyWith(color: context.theme.tints.blue)
        ),
      ],
    );
  }
}
