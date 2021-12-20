import 'package:ahmad_bilal/app/app.locator.dart';
import 'package:ahmad_bilal/app/utils/theme_manager.dart';
import 'package:ahmad_bilal/ui/widgets/smart_widgets/show_up.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ContactInfoView extends StatelessWidget {
  ContactInfoView({Key? key}) : super(key: key);

  final themeManager = locator<ThemeManager>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: screenSize.height * 0.25,
              width: screenSize.width * 0.25,
              child: Lottie.asset("assets/animations/contact_info.json"),
            ),
          ),
          ShowUp(
            child: Text(
              "Contact me at:",
              style: TextStyle(
                fontFamily: themeManager.defaultFont,
                color: Colors.blue,
                fontWeight: FontWeight.w700,
                fontSize: 40,
              ),
            ),
          ),
          Center(
            child: contactItem("assets/animations/phone.json", "Nae btatay hoty"),
          ),
          Center(
            child: contactItem("assets/animations/email.json", "ahm4d.bilal@gmail.com"),
          ),
          Center(
            child: contactItem("assets/animations/linked_in.json", "Ahmad Bilal"),
          ),
        ],
      ),
    );
  }

  Widget contactItem(String animationPath, String text) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 50,
          width: 50,
          child: Lottie.asset(animationPath),
        ),
        const SizedBox(
          width: 16,
        ),
        Text(
          text,
          style: TextStyle(
            fontFamily: themeManager.defaultFont,
            fontSize: 18,
          ),
        )
      ],
    );
  }
}
