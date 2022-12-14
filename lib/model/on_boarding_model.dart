import 'package:rapidgorcery/utils/app_strings.dart';

import '../utils/images_string.dart';

class OnBoadingModel {
  String? imagesPath;
  String? title;
  String? subtitle;

  OnBoadingModel({this.imagesPath, this.title, this.subtitle});
  static List<OnBoadingModel> onboardingList = [
    OnBoadingModel(
        imagesPath: AppImagesPaths.on____boarding___Image,
        title: AppStrings.onBoarding___________title,
        subtitle: AppStrings.onBoarding2___________subtitle),
    OnBoadingModel(
        imagesPath: AppImagesPaths.on____boarding1___Image,
        title: AppStrings.onBoarding___________title2,
        subtitle: AppStrings.onBoarding2___________subtitle2),
    OnBoadingModel(
        imagesPath: AppImagesPaths.on____boarding2___Image,
        title: AppStrings.onBoarding___________title3,
        subtitle: AppStrings.onBoarding2___________subtitle3),
  ];
}
