import 'package:flutter/material.dart';
import 'package:portfolio/resources/assets_manager.dart';
import 'package:portfolio/resources/icons_manager.dart';
import 'package:portfolio/resources/strings_manager.dart';

const Color primaryColor = Color(0xFF0F4776);
const Color backgroundColor = Color(0xFF121212);
const Color cardColor = Color(0xFF1E1E1E);

const Duration animationDuration = Duration(milliseconds: 500);

const String resumeUrl =
    "https://drive.google.com/uc?export=download&id=1JTfe4Y4Vj_E20MHDMJWgzxW6gp-VmkoD";

const String myEmail = 'mailto:Mshehata065@gmail.com';
const String myLinkedIn =
    'https://www.linkedin.com/in/mohamed-shehata-torky-b9aa86233';
const String myGithub = 'https://github.com/MoShehata7920';
const String myPhoneNumber = 'tel:+201112268819';

const List projects = [
  {
    'title': AppStrings.sed,
    'description': AppStrings.sedDescription,
    'images': [
      AssetsManager.sedOne,
      AssetsManager.sedTwo,
      AssetsManager.sedThree,
      AssetsManager.sedFour,
      AssetsManager.sedFive,
      AssetsManager.sedSex,
      AssetsManager.sedSeven,
      AssetsManager.sedEight,
      AssetsManager.sedNine,
      AssetsManager.sedTen,
      AssetsManager.sedEleven,
    ],
  },
  {
    'title': AppStrings.barberShop,
    'description': AppStrings.barberShopDescription,
    'images': [
      AssetsManager.barberShopOne,
      AssetsManager.barberShopTwo,
      AssetsManager.barberShopThree,
      AssetsManager.barberShopFour,
      AssetsManager.barberShopFive,
      AssetsManager.barberShopSex,
      AssetsManager.barberShopSeven,
      AssetsManager.barberShopEight,
      AssetsManager.barberShopNine,
      AssetsManager.barberShopTen,
      AssetsManager.barberShopEleven,
      AssetsManager.barberShopTwelve,
    ],
  },
  {
    'title': AppStrings.azkarElGanaa,
    'description': AppStrings.azkarElGanaaDescription,
    'images': [
      AssetsManager.azkarElGanaaOne,
      AssetsManager.azkarElGanaaTwo,
      AssetsManager.azkarElGanaaThree,
      AssetsManager.azkarElGanaaFour,
      AssetsManager.azkarElGanaaFive,
      AssetsManager.azkarElGanaaSex,
      AssetsManager.azkarElGanaaSeven,
      AssetsManager.azkarElGanaaEight,
      AssetsManager.azkarElGanaaNine,
      AssetsManager.azkarElGanaaTen,
      AssetsManager.azkarElGanaaEleven,
      AssetsManager.azkarElGanaaTwelve,
      AssetsManager.azkarElGanaaThirteen,
      AssetsManager.azkarElGanaaFourteen,
      AssetsManager.azkarElGanaaFifteen,
    ],
  },
  {
    'title': AppStrings.laborex,
    'description': AppStrings.laborexDescription,
    'images': [
      AssetsManager.laborexOne,
      AssetsManager.laborexTwo,
      AssetsManager.laborexThree,
      AssetsManager.laborexFour,
      AssetsManager.laborexFive,
      AssetsManager.laborexSex,
      AssetsManager.laborexSeven,
      AssetsManager.laborexEight,
      AssetsManager.laborexNine,
    ],
  },
];

const List<Map<String, dynamic>> technicalSkills = [
  {'name': AppStrings.dart, 'icon': IconsManager.dart},
  {'name': AppStrings.kotlin, 'icon': IconsManager.kotlin},
  {'name': AppStrings.python, 'icon': IconsManager.python},
  {'name': AppStrings.javaScript, 'icon': IconsManager.javaScript},
  {'name': AppStrings.flutter, 'icon': IconsManager.flutter},
  {'name': AppStrings.xml, 'icon': IconsManager.xml},
  {'name': AppStrings.provider, 'icon': IconsManager.provider},
  {'name': AppStrings.blocCubit, 'icon': IconsManager.blocCubit},
  {'name': AppStrings.cleanArch, 'icon': IconsManager.cleanArchitecture},
  {'name': AppStrings.mvvm, 'icon': IconsManager.mvvm},
  {'name': AppStrings.firebase, 'icon': IconsManager.firebase},
  {'name': AppStrings.gitGithub, 'icon': IconsManager.gitGithub},
  {'name': AppStrings.ciCd, 'icon': IconsManager.ciCd},
];

const List<Map<String, dynamic>> softSkills = [
  {'name': AppStrings.problemSolving, 'icon': IconsManager.problemSolving},
  {'name': AppStrings.teamWork, 'icon': IconsManager.teamWork},
  {'name': AppStrings.adaptAbility, 'icon': IconsManager.adaptAbility},
  {'name': AppStrings.timeManagement, 'icon': IconsManager.timeManagement},
  {'name': AppStrings.communication, 'icon': IconsManager.communication},
  {
    'name': AppStrings.emotionalIntelligence,
    'icon': IconsManager.emotionalIntelligence,
  },
];
