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

  void sendEmail() {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'smith@example.com',
      query: _encodeQueryParameters(<String, String>{
        'subject': 'Proposal for a project'
      }),
    );

    launch(emailLaunchUri.toString());
  }

  String? _encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }
}
