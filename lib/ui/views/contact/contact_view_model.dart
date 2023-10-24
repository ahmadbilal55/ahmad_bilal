import 'package:ahmad_bilal/app/utils/strings.dart';
import 'package:stacked/stacked.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactViewModel extends BaseViewModel {
  void openLinkedIn() {
    launch(Strings.linkedInProfileUrl);
  }

  void openMedium() {
    launch(Strings.mediumProfileUrl);
  }

  void openUpwork() {
    launch(Strings.upworkProfileUrl);
  }

  void openGitHub() {
    launch(Strings.githubProfileUrl);
  }
  void openStackoverflow() {
    launch(Strings.stackoverflowProfileUrl);
  }

  void launch(String url) {
    launchUrl(Uri.parse(url));
  }

  void openResume() {
    launch(Strings.resumeUrl);
  }

  void sendEmail() {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: Strings.emailAddress,
      query: _encodeQueryParameters({
        'subject': Strings.emailSubject,
      }),
    );

    launch(emailLaunchUri.toString());
  }

  String? _encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((e) =>
    '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }
}