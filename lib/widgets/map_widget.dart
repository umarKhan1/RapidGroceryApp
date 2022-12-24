import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rapidgorcery/widgets/widgets_imports.dart';

Widget mapwidget({IconData? iconData, String? title, BuildContext? context}) {
  return Row(
    children: [
      FaIcon(
        iconData,
        color: Colors.grey,
        size: 15,
      ),
   const   SizedBox(
        width: 10,
      ),
      TextWidget(title!, false, FontWeight.w500, 1,
          Theme.of(context!).textTheme.headline1!.color!, TextAlign.start),
    ],
  );
}
