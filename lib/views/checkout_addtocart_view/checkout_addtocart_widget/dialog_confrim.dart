import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rapidgorcery/utils/app_strings.dart';
import 'package:rapidgorcery/utils/images_string.dart';

dialogView({BuildContext? context}) {
  return showGeneralDialog(
    barrierDismissible: true,
    barrierLabel: '',
    barrierColor: Colors.black38,
    transitionDuration: const Duration(milliseconds: 500),
    pageBuilder: (ctx, anim1, anim2) => AlertDialog(
      content: SizedBox(
        height: 400,
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topRight,
              child: FaIcon(
                FontAwesomeIcons.xmark,
                color: Colors.black,
                size: 20,
              ),
            ),
            const Text(
              AppStrings.order__Sucesss_,
              style: TextStyle(fontWeight: FontWeight.w700),
              textScaleFactor: 1.2,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              AppStrings.aorder__Sucessss__text___,
              style: TextStyle(fontWeight: FontWeight.w500),
              textScaleFactor: 0.9,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                AppStrings.my___order,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline),
                textScaleFactor: 0.9,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(AppImagesPaths.order___person)
          ],
        ),
      ),
      elevation: 2,
    ),
    transitionBuilder: (ctx, anim1, anim2, child) => BackdropFilter(
      filter:
          ImageFilter.blur(sigmaX: 4 * anim1.value, sigmaY: 4 * anim1.value),
      child: FadeTransition(
        // ignore: sort_child_properties_last
        child: child,
        opacity: anim1,
      ),
    ),
    context: context!,
  );
}
