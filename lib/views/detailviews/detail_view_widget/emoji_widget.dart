import 'package:flutter/material.dart';

import '../../../widgets/widgets_imports.dart';

Widget emojiWidget({String? imageString, String? text, BuildContext? context}) {
  return Row(
    children: [
      Image.asset(
        imageString!,
        fit: BoxFit.cover,
        height: 30,
      ),
      const SizedBox(
        width: 5,
      ),
      TextWidget(text!, false, FontWeight.w800, 1,
          Theme.of(context!).textTheme.headline1!.color!, TextAlign.start),
    ],
  );
}
