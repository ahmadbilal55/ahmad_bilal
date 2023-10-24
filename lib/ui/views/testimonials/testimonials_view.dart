import 'package:ahmad_bilal/app/assets.dart';
import 'package:ahmad_bilal/app/extensions.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/screen_title.dart';
import 'package:flutter/material.dart';

import '../../widgets/dumb_widgets/testimonial_widget.dart';

class TestimonialsView extends StatelessWidget {
  const TestimonialsView({Key? key, this.inflateHorizontal = false})
      : super(key: key);

  final bool inflateHorizontal;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.backgrounds.primary,
      width: double.infinity,
      height:MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: ScreenTitle(title: 'Testimonials'),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 520, minWidth: 1200),
            child: Center(
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                scrollDirection: Axis.horizontal,
                children: [
                  for (int index = 0; index < testimonials.length; index++)
                    IntrinsicHeight(
                      child: TestimonialWidget(
                        testimonial: testimonials[index],
                      ),
                    )
                ],
              ),
            ),
          ),
           Padding(
            padding:const  EdgeInsets.all(16.0),
            child: Text(
              "Designed and developed with ❤️ by Ahmad Bilal",
              style: context.theme.textTheme.caption.caption1.copyWith(color: context.theme.labels.secondary)
            ),
          )
        ],
      ),
    );
  }
}
