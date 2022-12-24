import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../utils/app_strings.dart';
import '../../../widgets/widgets_imports.dart';
import '../checkout_imports.dart';

Widget checOutButton(BuildContext context) {
  return SizedBox(
    height: 80,
    child: InkWell(
      onTap: () => AppNavigation.navigateTo(context,   const CheckOutView()),
      child: Card(
        elevation: 1,
        color: Colors.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20)),
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TextWidget(AppStrings.home___detail__main__text, false,
                    FontWeight.w800, 1.2, Colors.white, TextAlign.start),
                Row(
                  children: const [
                    TextWidget(AppStrings.add__to___check___out, false,
                        FontWeight.w800, 1.2, Colors.white, TextAlign.start),
                    SizedBox(
                      width: 10,
                    ),
                    FaIcon(
                      FontAwesomeIcons.arrowRight,
                      color: Colors.white,
                      size: 15,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
