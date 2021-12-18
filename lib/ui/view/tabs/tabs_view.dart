import 'package:ahmad_bilal/ui/view/tabs/about_me.dart';
import 'package:ahmad_bilal/ui/view/tabs/initial_intro_view.dart';
import 'package:flutter/material.dart';

class TabsView extends StatelessWidget {
  const TabsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: [
            InitialIntroView(),
            AboutMeView(),
          ],
        ),
      ),
    );
  }
}
