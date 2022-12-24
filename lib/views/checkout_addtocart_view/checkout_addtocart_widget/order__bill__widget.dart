import 'package:flutter/material.dart';
import '../../../widgets/widgets_imports.dart';

Widget orderBill(
    {BuildContext? context,
    String? pricrtext,
    String? price,
    bool? showGreen}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      TextWidget(pricrtext!, false, FontWeight.w800, 1,
          Theme.of(context!).textTheme.headline2!.color!, TextAlign.start),
      TextWidget(
          price!,
          false,
          FontWeight.w800,
          1,
          showGreen == true
              ? Theme.of(context).primaryColor
              : Theme.of(context).textTheme.headline2!.color!,
          TextAlign.start),
    ],
  );
}
