import 'package:flutter/material.dart';

import '../../../widgets/widgets_imports.dart';

Widget profileListTileWidget(
    {String? assetPAth, String? name, BuildContext? context, bool? colorandIconShow, VoidCallback? onTap}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 11.0, vertical: 0),
    child: InkWell(
      onTap: onTap,
      child: ListTile(
        dense: true,
        leading: Container(
          height: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color:  Theme.of(context!).primaryColor,
          ),
          child: Image.asset(
            assetPAth!,
            color: Colors.white,
            height: 35,
          ),
        ),
        contentPadding: const EdgeInsets.all(0),
        title: TextWidget(name!, false, FontWeight.w500, 1,
            Theme.of(context).textTheme.headline1!.color!, TextAlign.start),
        trailing: colorandIconShow == true? Container(width: 2,):IconButton( 
          icon: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
            size: 14,
          ),
          onPressed: () {},
        ),
      ),
    ),
  );
}
