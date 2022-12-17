import 'package:flutter/material.dart';

import '../../../utils/app_strings.dart';
import '../../../widgets/widgets_imports.dart';

Widget viewAllWidget({String? text, BuildContext? context}) {
  return Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      TextWidget(text!, false, FontWeight.w800, 1.7,
          Theme.of(context!).textTheme.headline1!.color!, TextAlign.center),
      TextWidget(AppStrings.home___VIEW__ALL___text, false, FontWeight.w600,
          1.1, Theme.of(context).primaryColor, TextAlign.center),
    ],
  );
}
