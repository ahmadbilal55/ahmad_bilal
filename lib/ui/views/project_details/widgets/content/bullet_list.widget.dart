import 'package:ahmad_bilal/app/extensions.dart';
import 'package:flutter/material.dart';

class BulletListWidget extends StatelessWidget {
  const BulletListWidget({
    Key? key,
    required this.list,
  }) : super(key: key);

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int index = 0; index < list.length; index++)
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              "•   ${list[index]}",
              style: context.theme.textTheme.body.body.copyWith(
                color: context.theme.labels.primary,
              ),
            ),
          ),
      ],
    );
  }
}
