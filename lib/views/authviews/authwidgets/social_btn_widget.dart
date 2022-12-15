import 'package:flutter/material.dart';
import 'package:rapidgorcery/utils/images_string.dart';

InkWell socialWidget(
    {IconData? icons,
    BuildContext? context,
    bool? isfb,
    VoidCallback? onPressed}) {
  return InkWell(
    onTap: onPressed,
    child: Container(
      height: 6.4 * MediaQuery.of(context!).size.height / 100,
      width: 12.7 * MediaQuery.of(context).size.width / 100,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isfb == true ? const Color(0xff0041A8) : Colors.grey.withOpacity(0.2)),
      child:isfb == true ?Icon(
        icons,
        color: Colors.white,
      ): Image.asset(AppImagesPaths.login____google___Image)
    ),
  );
}
