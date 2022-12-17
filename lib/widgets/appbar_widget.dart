import 'package:flutter/material.dart';
import 'package:rapidgorcery/widgets/widgets_imports.dart';

AppBar appBarWidget({BuildContext? context, required bool? istitle, String?text }
){
  return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            AppNavigation.navigatorPop(context!);
          },
        ),
        centerTitle: true,
        title: istitle == true? TextWidget(text!,false, FontWeight.w700,1.2   , Theme.of(context!).textTheme.headline1!.color!, TextAlign.center): const Text(""),
          
      );
}