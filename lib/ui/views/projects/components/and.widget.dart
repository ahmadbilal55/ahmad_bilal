import 'package:flutter/material.dart';

class AndWidget extends StatelessWidget {
  const AndWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              height: 1,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.outline,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          Text(
            "AND",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              height: 1,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.outline,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
        ],
      );
  }
}
