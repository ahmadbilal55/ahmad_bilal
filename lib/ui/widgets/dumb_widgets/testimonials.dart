import 'package:ahmad_bilal/app/assets.dart';
import 'package:flutter/material.dart';

import 'testimonial_widget.dart';

class Testimonials extends StatelessWidget {
  const Testimonials({Key? key, this.inflateHorizontal = false})
      : super(key: key);

  final bool inflateHorizontal;

  @override
  Widget build(BuildContext context) {
    return inflateHorizontal
        ? SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (final testimonial in testimonials)
                  TestimonialWidget(
                    constraints: const BoxConstraints(maxWidth: 200),
                    testimonial: testimonial,
                  ),
              ],
            ),
          )
        : Column(
            children: [
              for (final testimonial in testimonials)
                TestimonialWidget(
                  testimonial: testimonial,
                  border: Border(
                    bottom: BorderSide(
                      color: Theme.of(context).dividerColor,
                    ),
                  ),
                )
            ],
          );
  }
}
