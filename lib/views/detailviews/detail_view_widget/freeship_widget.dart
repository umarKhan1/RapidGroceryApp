import 'package:flutter/material.dart';

import '../../../widgets/widgets_imports.dart';

Widget freeShipWithPriceWidget(
    {String? price, String? cutPrice, String? offers, BuildContext? context}) {
  double height = MediaQuery.of(context!).size.height / 100;
  double width = MediaQuery.of(context).size.width / 100;

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          TextWidget(price!, false, FontWeight.w600, 1.1,
              Theme.of(context).primaryColor, TextAlign.start),
          const SizedBox(
            width: 10,
          ),
          TextWidget(cutPrice!, true, FontWeight.w600, 1.1,
              Theme.of(context).textTheme.headline1!.color!, TextAlign.start),
        ],
      ),
      Container(
        height: 3.5 * height,
        width: 27.7 * width,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          offers!,
          style: const TextStyle(color: Colors.white),
        )),
      )
    ],
  );
}
