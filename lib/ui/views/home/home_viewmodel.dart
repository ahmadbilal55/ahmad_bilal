import 'package:ahmad_bilal/app/utils/strings.dart';
import 'package:stacked/stacked.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeViewModel extends BaseViewModel {
  void openLinkedIn() {
    launchUrl(Strings.linkedInProfileUrl);
  }

  void openMedium() {
    launchUrl(Strings.mediumProfileUrl);
  }

  void openUpwork() {
    launchUrl(Strings.upworkProfileUrl);
  }

  void openGitHub() {
    launchUrl(Strings.githubProfileUrl);
  }
  void openStackoverflow() {
    launchUrl(Strings.stackoverflowProfileUrl);
  }

  void launchUrl(String url) {
    launch(url);
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
