import 'package:ahmad_bilal/app/app.locator.dart';
import 'package:ahmad_bilal/app/utils/theme_manager.dart';
import 'package:ahmad_bilal/ui/widgets/smart_widgets/show_up.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AboutMeView extends StatelessWidget {
   AboutMeView({Key? key}) : super(key: key);

  final themeManger = locator<ThemeManager>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width - 16;
    final screenHeight = screenSize.height - 16;
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26, offset: Offset(3, 3), blurRadius: 20),
            ],
          ),
          child: Column(
            children: [
              ShowUp(
                delay: 500,
                child: SizedBox(
                  height: screenHeight * 0.25,
                  width: screenWidth * 0.25,
                  child: Lottie.asset("assets/animations/coding.json"),
                ),
              ),
              ShowUp(
                delay: 700,
                child: Center(
                  child: Text(
                    "About me:",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 40,
                        fontFamily: themeManger.defaultFont),
                  ),
                ),
              ),
              ShowUp(
                delay: 900,
                child: SingleChildScrollView(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Hi, I am Ahmad Bilal. Mobile application developer with multiple successful projects for clients from across the world. I try to make my clients as happy possible even if I have to put in some extra work.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: themeManger.primaryColor,
                            fontSize: 24,
                            fontFamily: themeManger.defaultFont),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
