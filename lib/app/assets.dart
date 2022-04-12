import 'package:ahmad_bilal/app/utils/strings.dart';
import 'package:ahmad_bilal/models/project_model.dart';
import 'package:ahmad_bilal/models/testimonial_model.dart';
import 'package:flutter/material.dart';

class Assets {
  static const profile = "assets/icons/profile.png";
  static const upwork = "assets/icons/upwork.png";
  static const email = "assets/icons/email.png";
  static const twitter = "assets/icons/twitter.png";
  static const linkedIn = "assets/icons/linkedIn.png";
  static const github = "assets/icons/github.png";
}

List<ProjectModel> projects = [
  const ProjectModel(
    logoPath: Assets.profile,
    title: 'Ahmad Bilal',
    description: "This is my portfolio",
    projectPrimaryColor: Colors.amberAccent,
    screenshots: [
      Screenshot(
        title: 'Screen Title',
        path: Assets.profile,
        description: 'This My Portfolio',
      ),
      Screenshot(
        title: 'Screen Title',
        path: Assets.profile,
        description: 'This My Portfolio',
      ),
      Screenshot(
        title: 'Screen Title',
        path: Assets.profile,
        description: 'This My Portfolio',
      ),
    ],
  ),
  const ProjectModel(
    logoPath: Assets.profile,
    title: 'Ahmad Bilal 1',
    description: "This is my portfolio",
    projectPrimaryColor: Colors.amberAccent,
    screenshots: [
      Screenshot(
        title: 'Screen Title',
        path: Assets.profile,
        description: 'This My Portfolio',
      ),
      Screenshot(
        title: 'Screen Title',
        path: Assets.profile,
        description: 'This My Portfolio',
      ),
      Screenshot(
        title: 'Screen Title',
        path: Assets.profile,
        description: 'This My Portfolio',
      ),
    ],
  ),
  const ProjectModel(
    logoPath: Assets.profile,
    title: 'Ahmad Bilal 2',
    description: "This is my portfolio",
    projectPrimaryColor: Colors.amberAccent,
    screenshots: [
      Screenshot(
        title: 'Screen Title',
        path: Assets.profile,
        description: 'This My Portfolio',
      ),
      Screenshot(
        title: 'Screen Title',
        path: Assets.profile,
        description: 'This My Portfolio',
      ),
      Screenshot(
        title: 'Screen Title',
        path: Assets.profile,
        description: 'This My Portfolio',
      ),
    ],
  ),
  const ProjectModel(
    logoPath: Assets.profile,
    title: 'Ahmad Bilal 3',
    description: "This is my portfolio",
    projectPrimaryColor: Colors.amberAccent,
    screenshots: [
      Screenshot(
        title: 'Screen Title',
        path: Assets.profile,
        description: 'This My Portfolio',
      ),
      Screenshot(
        title: 'Screen Title',
        path: Assets.profile,
        description: 'This My Portfolio',
      ),
      Screenshot(
        title: 'Screen Title',
        path: Assets.profile,
        description: 'This My Portfolio',
      ),
    ],
  ),
  const ProjectModel(
    logoPath: Assets.profile,
    title: 'Ahmad Bilal 4',
    description: "This is my portfolio",
    projectPrimaryColor: Colors.amberAccent,
    screenshots: [
      Screenshot(
        title: 'Screen Title',
        path: Assets.profile,
        description: 'This My Portfolio',
      ),
      Screenshot(
        title: 'Screen Title',
        path: Assets.profile,
        description: 'This My Portfolio',
      ),
      Screenshot(
        title: 'Screen Title',
        path: Assets.profile,
        description: 'This My Portfolio',
      ),
    ],
  ),
];

List<TestimonialModel> testimonials = [
  TestimonialModel(
      clientName: "Client", testimony: Strings.loremIpsum, rating: 5),
  TestimonialModel(
    clientName: "Client",
    testimony: Strings.loremIpsum,
    rating: 4.5,
  ),
  TestimonialModel(
    clientName: "Client",
    testimony: Strings.loremIpsum,
    rating: 4.5,
  ),
  TestimonialModel(
    clientName: "Client",
    testimony: Strings.loremIpsum,
    rating: 5,
  ),
];
