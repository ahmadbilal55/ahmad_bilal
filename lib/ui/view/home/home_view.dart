import 'package:ahmad_bilal/app/app.locator.dart';
import 'package:ahmad_bilal/app/utils/theme_manager.dart';
import 'package:ahmad_bilal/ui/widgets/smart_widgets/show_up.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final themeManger = locator<ThemeManager>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: screenSize.height,
          width: screenSize.width,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.network(
                  "assets/animations/hello_boy.json",
                  fit: BoxFit.contain,
                  height: 240,
                  width: 240,
                  repeat: true,
                ),
                const SizedBox(
                  height: 16,
                ),
                ShowUp(
                  delay: 500,
                  child: Text(
                    "Ahmad Bilal",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: themeManger.primaryColor,
                      fontFamily: themeManger.defaultFont,
                      fontWeight: FontWeight.w700,
                      fontSize: 50,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ShowUp(
                  delay: 700,
                  child: Text(
                    "I'm a Flutter developer and I love developing scalable applications.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: themeManger.primaryColor,
                      fontFamily: themeManger.defaultFont,
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
