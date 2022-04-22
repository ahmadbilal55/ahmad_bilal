import 'package:ahmad_bilal/app/utils/paths.dart';
import 'package:ahmad_bilal/models/project_model.dart';
import 'package:ahmad_bilal/models/skill_model.dart';
import 'package:ahmad_bilal/models/testimonial_model.dart';
import 'package:flutter/material.dart';

List<ProjectModel> get projects {
  List<ProjectModel> projects = List.empty(growable: true);
  ProjectModel shades = const ProjectModel(
    title: 'Shades',
    screenshots: [
      '${Paths.shades}/00.png',
      '${Paths.shades}/01.png',
      '${Paths.shades}/02.png',
      '${Paths.shades}/03.png',
      '${Paths.shades}/04.png',
      '${Paths.shades}/05.png',
      '${Paths.shades}/06.png',
      '${Paths.shades}/07.png',
      '${Paths.shades}/08.png',
      '${Paths.shades}/09.png',
      '${Paths.shades}/10.png',
      '${Paths.shades}/11.png',
      '${Paths.shades}/12.png',
      '${Paths.shades}/13.png',
    ],
    description:
        'Provide beauty services to your favorite clients.',
    logoPath: '${Paths.shades}/shades.png',
    projectPrimaryColor: Color(0xFFa94c4c),
  );
  ProjectModel angels = const ProjectModel(
    title: 'Angels',
    screenshots: [
      '${Paths.angels}/00.png',
      '${Paths.angels}/01.png',
      '${Paths.angels}/02.png',
      '${Paths.angels}/03.png',
      '${Paths.angels}/04.png',
      '${Paths.angels}/05.png',
      '${Paths.angels}/06.png',
      '${Paths.angels}/07.png',
      '${Paths.angels}/08.png',
      '${Paths.angels}/09.png',
      '${Paths.angels}/10.png',
      '${Paths.angels}/11.png',
      '${Paths.angels}/12.png',
    ],
    description:
        'Request beauty services like massage, hair cut etc. at your doorstep',
    logoPath: '${Paths.angels}/angels.png',
    projectPrimaryColor: Color(0xFFffaea9),
  );

  projects.addAll([angels, shades]);

  return projects;
}

List<TestimonialModel> testimonials = [
  TestimonialModel(
    clientName: "Nicolas Nadeau",
    testimony:
        "Ahmad is helpful and works diligently. Great communication. Thanks.",
    rating: 5,
  ),
  TestimonialModel(
    clientName: "Shane John",
    testimony:
        "Amazing job! My expectations have been well exceeded! Very collaborative and knowledgeable person. I had a great experience. Thanks",
    rating: 5,
  ),
  TestimonialModel(
    clientName: "Nooa Simon",
    testimony:
        "Absolutely incredible freelancer. Went above and beyond to give stellar results. Will hire again once we get new projects. Thank you!",
    rating: 5,
  ),
  TestimonialModel(
    clientName: "Julia Max",
    testimony:
        "Did a great Job and always responsive. Freelancer delivery is satisfactory, Job welldone! Highly Recommended.",
    rating: 5,
  ),
  TestimonialModel(
    clientName: "Yancy Nalisa",
    testimony: "Went above & beyond! Great shots.",
    rating: 5,
  ),
];

final flutterSkill = Skill(
  logo: "assets/images/flutter.png",
  title: "Flutter Developer",
  experience: "2020 - Present (${DateTime.now().year - 2020} Years)",
  description:
      "I mainly focus on creating polished, pixel-perfect, smooth and fully responsive applications helping end-users achieve their goals painlessly and, more importantly, as quickly as possible. I have a strong eye for detail and tenacity to never quit on something until it is absolutely perfect.As a passionate and motivated professional, I have constantly improved my techniques, expanded my skillset and found new opportunities to grow. I am an expert in Dart, Flutter SDK, Stacked Architecture, Provider and BLoC State management.",
  slogan:
      "Insanely Rapid Development, Pixel-Perfect, Fully Responsive and Multiple Platforms Support",
  skills: [
    "Dart | Flutter",
    "Git | Github",
    "Jira | Agile Development",
    "Stacked Architecture",
    "Test Driven Development",
    "Provider | Bloc | GetX",
    "Adaptive and Responsive UI",
  ],
);
final firebaseSkill = Skill(
  logo: "assets/images/firebase.png",
  title: " Firebase Expert ",
  experience: "2019 - Present (${DateTime.now().year - 2019} Years)",
  description:
      "I know in and out of firebase and all of its services, what are it’s limitations and what features it provides that could help us reach our dream database easily. Speaking of dream database, it should be optimised for speed, secure so users could only access what they are intended to and cost effective so we don’t do any extra reads & writes. Achieving all three is much more difficult than it seems and I have seen companies struggling with it. With my great experience in this field, I provide best solutions possible.",
  slogan:
      "Fully optimised for Speed, Completely Secure and Cost Effective System Solutions",
  skills: [
    "Auth Integration",
    "Schema Design",
    "Rules | Role Based Access",
    "Functions in Javascript",
    "Cloud Messaging",
    "Storage | Hosting",
    "Crashlytics",
  ],
);

final androidSkill = Skill(
  logo: "assets/images/android.png",
  title: "Android Developer",
  experience: "2019 - Present (${DateTime.now().year - 2019} Years)",
  description:
      "Expert android application developer with a track record of success creating apps that are both well-received and commercially viable. I am skilled with working as a team and incorporating input into projects. I have ability to always look for ways to improve upon an already existing app to keep people downloading it and enjoying it. I am eager to constantly learn new things. At the moment, I am an expert in the new Java 8 and 9 language features, Kotlin, architectural patterns and Android Jetpack libraries and guidelines.",
  slogan:
      "Extremely Robust, Well-Received by Users, High Quality and Commercially Viable",
  skills: [
    "Java | Kotlin | Xml",
    "Git | Github",
    "Jira | Agile Development",
    "Android Jetpack",
    "Architectural Patterns",
    "Responsive UI"
  ],
);
