import 'package:ahmad_bilal/app/extensions.dart';
import 'package:ahmad_bilal/models/testimonial_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class TestimonialWidget extends StatelessWidget {
  const TestimonialWidget({
    Key? key,
    required this.testimonial,
    this.border,
    this.constraints = const BoxConstraints(
        maxWidth: double.infinity, minWidth: double.infinity),
  }) : super(key: key);
  final TestimonialModel testimonial;
  final Border? border;
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 4),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: border,
        ),
        child: Column(
          children: [
            Text(
              testimonial.clientName,
              style: context.theme.textTheme.callouts.callout.copyWith(
                color: context.theme.labels.primary,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Expanded(
              child: Text(
                '"${testimonial.testimony}"',
                textAlign: TextAlign.center,
                style: context.theme.textTheme.subHeadlines.subHeadline.copyWith(
              color: context.theme.tints.blue,
              ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            RatingStars(
              value: testimonial.rating ?? 0,
              valueLabelVisibility: false,
              starColor: context.theme.tints.blue,
            )
          ],
        ),
      ),
    );
  }
}
