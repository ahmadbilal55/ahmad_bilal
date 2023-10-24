import 'package:ahmad_bilal/app/extensions.dart';
import 'package:ahmad_bilal/app/utils/strings.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/contact_row.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/screen_title.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'contact_view_model.dart';

class ContactView extends StackedView<ContactViewModel> {
  const ContactView({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context, ContactViewModel viewModel, Widget? child) {
    return Container(
      color: context.theme.tints.blue,
      height: 500,
      width: double.maxFinite,
      padding: const EdgeInsets.all(40),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ScreenTitle(
              title: Strings.contact,
              color: Colors.white,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    Strings.name,
                    style: context.theme.textTheme.body.body
                        .copyWith(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  InkWell(
                    onTap: viewModel.sendEmail,
                    child: Text(
                      Strings.email,
                      style: context.theme.textTheme.body.body
                          .copyWith(color: Colors.white,decoration: TextDecoration.underline),
                    ),
                  ),
                  SizedBox(height: 10),
                  RichText(
                    text: TextSpan(
                      text: 'Find my resumé ',
                      style: context.theme.textTheme.body.body
                          .copyWith(color: Colors.white),
                      children: [
                        TextSpan(
                          text: 'here',recognizer: TapGestureRecognizer()..onTap=viewModel.openResume,
                          style: context.theme.textTheme.body.body.copyWith(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text(
              Strings.findMeOn,
              style: context.theme.textTheme.headlines.headlineBold.copyWith(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            ContactRow(
              onTapUpwork: viewModel.openUpwork,
              onTapLinkedIn: viewModel.openLinkedIn,
              onTapMedium: viewModel.openMedium,
              onTapGitHub: viewModel.openGitHub,
              onTapStackoverflow: viewModel.openStackoverflow,
            )
          ],
        ),
      ),
    );
  }

  @override
  ContactViewModel viewModelBuilder(BuildContext context) => ContactViewModel();
}
