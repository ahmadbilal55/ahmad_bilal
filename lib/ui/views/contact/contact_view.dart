import 'package:ahmad_bilal/app/utils/paths.dart';
import 'package:ahmad_bilal/app/utils/strings.dart';
import 'package:ahmad_bilal/app/utils/theme_manager.dart';
import 'package:ahmad_bilal/ui/views/contact/contact_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ContactView extends StatelessWidget {
  const ContactView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return ViewModelBuilder<ContactViewModel>.reactive(
      builder: (context, model, child) => Container(
        height: screenHeight * 0.2,
        color: MyThemeData.primaryColor,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Paths.email,
                  height: 24,
                  color: MyThemeData.secondaryBackground,
                ),
                const SizedBox(width: 16,),
                const Text(
                  Strings.emailAddress,
                  style: TextStyle(
                    color: MyThemeData.backgroundColor,
                    fontFamily: MyThemeData.defaultFont,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                IconButton(
                  onPressed: model.copyEmailToClipBoard,
                  icon: Icon(
                    Icons.copy,
                    color: MyThemeData.backgroundColor.withOpacity(0.3),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                contactItem(
                  iconPath: Paths.email,
                  onPressed: model.sendEmail,
                ),
                contactItem(
                  iconPath: Paths.linkedIn,
                  onPressed: model.openLinkedIn,
                ),
                contactItem(
                  iconPath: Paths.twitter,
                  onPressed: model.openTwitter,
                ),
                contactItem(
                  iconPath: Paths.upwork,
                  onPressed: model.openUpwork,
                ),
                contactItem(
                  iconPath: Paths.github,
                  onPressed: model.openGitHub,
                ),
              ],
            ),
          ],
        ),
      ),
      viewModelBuilder: () => ContactViewModel(),
    );
  }

  Widget contactItem(
      {required String iconPath, required VoidCallback onPressed}) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          primary: MyThemeData.secondaryBackground),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          iconPath,
          height: 24,
          color: MyThemeData.backgroundColor,
        ),
      ),
    );
  }
}
