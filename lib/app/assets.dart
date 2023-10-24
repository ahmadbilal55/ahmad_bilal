import 'package:ahmad_bilal/app/utils/paths.dart';
import 'package:ahmad_bilal/models/project_model.dart';
import 'package:ahmad_bilal/models/skill_model.dart';
import 'package:ahmad_bilal/models/testimonial_model.dart';
import 'package:flutter/material.dart';

List<ProjectModel> get projects {
  List<ProjectModel> projects = List.empty(growable: true);
  ProjectModel shades = const ProjectModel(
    techStack: [
      'Flutter',
      'Firebase',
      'Stripe',
      'Google Maps',
      'Google places',
      'Noqodi',
    ],
    platforms: ['Android', 'iOS'],
    title: 'Shades',
    splashPath: '${Paths.shades}/00.png',
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
        'Request beauty services like massage, hair cut etc. at your doorstep',
    logoPath: '${Paths.shades}/shades.png',
    projectPrimaryColor: Color(0xFFa94c4c),
  );
  ProjectModel angels = const ProjectModel(
    techStack: [
      'Flutter',
      'Firebase',
      'Stripe',
      'Google Maps',
      'Google places',
      'Noqodi',
    ],
    platforms: ['Android', 'iOS'],
    title: 'Angels',
    splashPath: '${Paths.angels}/00.png',
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
    description: 'Provide beauty services to your favorite clients.',
    logoPath: '${Paths.angels}/angels.png',
    projectPrimaryColor: Color(0xFFffaea9),
  );
  ProjectModel fufa = const ProjectModel(
    techStack: [
      'Flutter',
      'Firebase',
      'DPO',
      'Live Stream',
      'Video on Demand',
      'Premium Subscriptions',
    ],
    platforms: ['Android', 'iOS'],
    title: 'FUFA',
    splashPath: '${Paths.fufa}/0.png',
    screenshots: [
      '${Paths.fufa}/0.png',
      '${Paths.fufa}/1.png',
      '${Paths.fufa}/2.png',
      '${Paths.fufa}/3.png',
      '${Paths.fufa}/4.png',
      '${Paths.fufa}/5.png',
      '${Paths.fufa}/6.png',
      '${Paths.fufa}/7.png',
      '${Paths.fufa}/8.png',
      '${Paths.fufa}/9.png',
      '${Paths.fufa}/10.png',
      '${Paths.fufa}/11.png',
    ],
    description: 'Football live streaming and discussions.',
    logoPath: '${Paths.fufa}/fufa.png',
    projectPrimaryColor: Color(0xFFFF5E00),
  );
  ProjectModel secretDays = const ProjectModel(
    title: 'Secret Days',
    splashPath: '${Paths.secretDays}/0.png',
    techStack: [
      'Flutter',
      'Firebase',
      'Stripe',
      'Voice Calling',
      'Pay tips',
      'Agora'
    ],
    platforms: ['Android', 'iOS'],
    screenshots: [
      '${Paths.secretDays}/0.png',
      '${Paths.secretDays}/1.png',
      '${Paths.secretDays}/2.png',
      '${Paths.secretDays}/3.png',
      '${Paths.secretDays}/4.png',
    ],
    description: 'Connecting two generations.',
    logoPath: '${Paths.secretDays}/secretDays.png',
    projectPrimaryColor: Color(0xFF8C0083),
  );

  projects.addAll([angels, shades, fufa, secretDays]);

  return projects;
}

List<TestimonialModel> testimonials = [
  TestimonialModel(
    clientName: "Paul André Savoie",
    testimony: "Working with Ahmed has been an absolute pleasure – his speed, genius, and infectious personality have been a tremendous asset to our team.",
    rating: 4.8,
  ),
  TestimonialModel(
    clientName: "Ekaterina Smirnova",
    testimony:"Amazing job!!! He exceeded all expectations, and was very lenient with my busy timetable. Completed the job very quickly and with the best quality. Great communication. Would definitely hire again!!! Thank you.",
    rating: 5,
  ),
  TestimonialModel(
    clientName: "Nicolas Nadeau",
    testimony:
        "Ahmad is helpful and works diligently. Great communication. Thanks.",
    rating: 5,
  ),
  TestimonialModel(
    clientName: "Jarod Hydron",
    testimony:"The project was completed perfectly! Ahmad is an expert in the sector: competent, attentive to details and always available. I recommend him to everyone",
    rating: 5,
  ),
  TestimonialModel(
    clientName: "Shane John",
    testimony:
        "Amazing job! My expectations have been well exceeded! Very collaborative and knowledgeable person. I had a great experience. Thanks",
    rating: 5,
  ),
  TestimonialModel(
    clientName: "William Hannah",
    testimony:"Ahmad is great. Highly recommended.",
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

final skills = [
  Skill(
    logo: "assets/images/flutter.png",
    title: "Flutter",
    experience: "2020 - Present (${DateTime.now().year - 2020} Years)",
    description: '',
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
  ),
  Skill(
    logo: "assets/images/firebase.png",
    title: " Firebase",
    experience: "2019 - Present (${DateTime.now().year - 2019} Years)",
    description: '',
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
  ),
  Skill(
    logo: "assets/images/dart.png",
    title: "Dart",
    experience: "2019 - Present (${DateTime.now().year - 2019} Years)",
    description: '',
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
  ),
  Skill(
    logo: "assets/images/android.png",
    title: "Android Development",
    experience: "2019 - Present (${DateTime.now().year - 2019} Years)",
    description: '',
    slogan:
        "Impressive Performance, Native Experience, Light Weight Apps with Insane Smoothness.",
    skills: [
      "Java | Kotlin | Xml",
      "Git | Github",
      "Jira | Agile Development",
      "Android Jetpack",
      "Architectural Patterns",
      "Responsive UI"
    ],
  ),
  Skill(
    logo: "assets/images/kotlin.png",
    title: "Kotlin",
    experience: "2019 - Present (${DateTime.now().year - 2019} Years)",
    description: '',
    slogan:
        "Easy to Read, Fast Development, Little to None Boilerplate.",
    skills: [
      "Java | Kotlin | Xml",
      "Git | Github",
      "Jira | Agile Development",
      "Android Jetpack",
      "Architectural Patterns",
      "Responsive UI"
    ],
  ),
  Skill(
    logo: "assets/images/nodejs.png",
    title: "NodeJs",
    experience: "2019 - Present (${DateTime.now().year - 2019} Years)",
    description: '',
    slogan:
        "Widely Used, Warmly Accepted, Great Solutions and Awesome Performance.",
    skills: [
      "Java | Kotlin | Xml",
      "Git | Github",
      "Jira | Agile Development",
      "Android Jetpack",
      "Architectural Patterns",
      "Responsive UI"
    ],
  ),
];
