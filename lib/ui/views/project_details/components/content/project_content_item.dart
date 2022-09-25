import 'package:ahmad_bilal/ui/widgets/smart_widgets/show_up.dart';
import 'package:flutter/material.dart';

class ProjectContentItem extends StatelessWidget {
  const ProjectContentItem(
      {Key? key,
      required this.showUpDelay,
      required this.color,
      required this.title,
      required this.child})
      : super(key: key);

  final int showUpDelay;
  final Color color;
  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShowUp(
      delay: showUpDelay,
      child: IntrinsicHeight(
        child: Row(
          children: [
            VerticalDivider(
              color: color,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headline1?.copyWith(
                          fontSize: 24,
                          color: color,
                        ),
                  ),
                  const SizedBox(height: 8),
                  child
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
