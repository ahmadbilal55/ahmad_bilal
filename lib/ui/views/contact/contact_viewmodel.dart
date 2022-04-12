import 'package:ahmad_bilal/app/utils/strings.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactViewModel extends BaseViewModel {
  void openLinkedIn() {
    launchUrl(Strings.linkedInProfileUrl);
  }

  void openTwitter() {
    launchUrl(Strings.twitterProfileUrl);
  }

  void openUpwork() {
    launchUrl(Strings.upworkProfileUrl);
  }

  void openGitHub() {
    launchUrl(Strings.githubProfileUrl);
  }

  void copyEmailToClipBoard() {
    Clipboard.setData(
      const ClipboardData(text: Strings.emailAddress),
    );
  }

  void launchUrl(String url) {
    launch(url);
  }
}
