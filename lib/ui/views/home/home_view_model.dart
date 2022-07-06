import 'package:ahmad_bilal/app/assets.dart';
import 'package:ahmad_bilal/app/utils/paths.dart';
import 'package:ahmad_bilal/app/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeViewModel extends BaseViewModel{
  bool showUpAnimationCompleted = false;

  void onShowUpAnimationCompleted(){
    showUpAnimationCompleted = true;
    notifyListeners();
  }

  void openLinkedIn() {
    _launchUrl(Strings.linkedInProfileUrl);
  }

  void openTwitter() {
    _launchUrl(Strings.twitterProfileUrl);
  }

  void openUpwork() {
    _launchUrl(Strings.upworkProfileUrl);
  }

  void openGitHub() {
    _launchUrl(Strings.githubProfileUrl);
  }

  void _launchUrl(String url) {
    launch(url);
  }

  Future<void> precacheAllImages(BuildContext context) async {
    for (final project in projects) {
      for (final image in project.screenshots) {
        await precacheImage(AssetImage(image), context);
      }
    }
    for (final path in Paths.allImagesPaths) {
      await precacheImage(AssetImage(path), context);
    }
  }
}