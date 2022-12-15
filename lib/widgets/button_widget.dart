import 'package:flutter/material.dart';
import 'package:rapidgorcery/widgets/widgets_imports.dart';

Widget buttonWidget({BuildContext? context, String? text, VoidCallback? onPressed}){
  return InkWell(
    onTap: onPressed,
    child: Container(
      height: 44,

      decoration: BoxDecoration(color: Theme.of(context!).primaryColor,
      borderRadius: BorderRadius.circular(10)
      ),
    child: Center(child: TextWidget(text.toString(), false, FontWeight.bold, 1.2, Theme.of(context).textTheme.headline3!.color!, TextAlign.center)),
    ),
  );
  
  }