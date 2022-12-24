import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../utils/app_strings.dart';
import '../../../utils/images_string.dart';
import '../../../widgets/map_widget.dart';
import '../../../widgets/widgets_imports.dart';
import '../checkout_imports.dart';

Widget locationWidget(BuildContext context) {
  var height = MediaQuery.of(context).size.height / 100;
  var width = MediaQuery.of(context).size.width / 100;
  return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        height: 21.3 * height,
        padding: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                    AppStrings.delivery___home___Text,
                    false,
                    FontWeight.w800,
                    1,
                    Theme.of(context).textTheme.headline2!.color!,
                    TextAlign.start),
                InkWell(
                  onTap: () {
                    AppNavigation.navigateTo(
                        context, const ChangeLocationView());
                  },
                  child: TextWidget("Change", false, FontWeight.w500, 1,
                      Theme.of(context).primaryColor, TextAlign.start),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Stack(
                  children: [
                    Image.asset(AppImagesPaths.map),
                    Positioned(
                        top: 4.2 * height,
                        left: 9.7 * width,
                        child:
                            Image.asset(AppImagesPaths.group____home____map)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    mapwidget(
                        iconData: FontAwesomeIcons.locationDot,
                        title: "147 Kere Terrace, New York, US.",
                        context: context),
                    const SizedBox(
                      height: 10,
                    ),
                    mapwidget(
                        iconData: FontAwesomeIcons.user,
                        title: "Todd Benson.",
                        context: context),
                    const SizedBox(
                      height: 10,
                    ),
                    mapwidget(
                        iconData: FontAwesomeIcons.phone,
                        title: "+11234567",
                        context: context),
                  ],
                )
              ],
            )
          ],
        ),
      ));
}
