import 'package:flutter/material.dart';

class InfoText extends StatelessWidget {
  const InfoText( {Key? key,required this.title, this.value='N/A',}) : super(key: key);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "$title:",
          style:
          Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 14),
        ),
        Text(
          value,
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }
}
