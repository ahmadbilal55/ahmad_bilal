import 'package:ahmad_bilal/app/utils/strings.dart';
import 'package:flutter/material.dart';

import 'info_text.dart';

class BasicInfoWidget extends StatelessWidget {
  const BasicInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
          child: InfoText(
            title: Strings.nationality,
            value: Strings.pakistan,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
          child: InfoText(
            title: Strings.city,
            value: Strings.islamabad,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
          child: InfoText(
            title: Strings.age,
            value: Strings.ageNumber,
          ),
        ),
      ],
    );
  }
}
