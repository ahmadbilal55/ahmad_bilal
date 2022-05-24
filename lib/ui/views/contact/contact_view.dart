import 'package:ahmad_bilal/app/utils/paths.dart';
import 'package:ahmad_bilal/ui/views/contact/contact_viewmodel.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/screen_title.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

class ContactView extends StatelessWidget {
  const ContactView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    final titleMargin = getValueForScreenType<EdgeInsets>(context: context,
        mobile: const EdgeInsets.symmetric(horizontal: 16, vertical: 4,),
        tablet: const EdgeInsets.symmetric(horizontal: 16, vertical: 6,),
        desktop: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
        );
    return ViewModelBuilder<ContactViewModel>.reactive(
      builder: (context, model, child) =>
          Container(
            constraints: BoxConstraints(minHeight: screenHeight * 0.2),
            color: Theme.of(context).primaryColor,
            child: Column(
              children: [
                 ScreenTitle(
                  title: "Contact",
                  margin: titleMargin,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    contactItem(
                      context,
                      iconPath: Paths.email,
                      onPressed: model.sendEmail,
                    ),
                    contactItem(
                      context,
                      iconPath: Paths.linkedIn,
                      onPressed: model.openLinkedIn,
                    ),
                    contactItem(
                      context,
                      iconPath: Paths.twitter,
                      onPressed: model.openTwitter,
                    ),
                    contactItem(
                      context,
                      iconPath: Paths.upwork,
                      onPressed: model.openUpwork,
                    ),
                    contactItem(
                      context,
                      iconPath: Paths.github,
                      onPressed: model.openGitHub,
                    ),
                  ],
                ),
                const SizedBox(height: 16,),
              ],
            ),
          ),
      viewModelBuilder: () => ContactViewModel(),
    );
  }

  Widget contactItem(
      BuildContext context,
      {required String iconPath, required VoidCallback onPressed}) {
    final iconSize = getValueForScreenType<double>(context: context, mobile: 18,tablet: 22,desktop: 24);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          primary: Theme.of(context).accentColor),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          iconPath,
          height: iconSize,
          color: Colors.white,
        ),
      ),
    );
  }
}
