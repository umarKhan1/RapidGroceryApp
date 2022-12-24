import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../utils/app_strings.dart';
import '../../../widgets/widgets_imports.dart';

Widget dateAndTime(BuildContext context) {
  double height = MediaQuery.of(context).size.height / 100;

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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            TextWidget(
                AppStrings.delivery___time__and__setting,
                false,
                FontWeight.w800,
                1,
                Theme.of(context).textTheme.headline2!.color!,
                TextAlign.start),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              child: Container(
                height: 6.1 * height,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                        "Time Slot",
                        false,
                        FontWeight.w800,
                        1,
                        Theme.of(context).textTheme.headline2!.color!,
                        TextAlign.start),
                    const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              child: Container(
                height: 6.1 * height,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                        "Jan 01,2020",
                        false,
                        FontWeight.w800,
                        1,
                        Theme.of(context).textTheme.headline2!.color!,
                        TextAlign.start),
                    const FaIcon(
                      FontAwesomeIcons.calendar,
                      color: Colors.grey,
                      size: 20,
                    )
                  ],
                ),
              ),
            )
          ])));
}
