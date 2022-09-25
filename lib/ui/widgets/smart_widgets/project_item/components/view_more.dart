import 'package:flutter/material.dart';

class ViewMore extends StatelessWidget {
  const ViewMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "View details",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 12,
      ),
    );
  }
}
