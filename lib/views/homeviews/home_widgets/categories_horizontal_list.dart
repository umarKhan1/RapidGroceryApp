import 'package:flutter/material.dart';
import '../../../model/categories_model.dart';
import '../../../widgets/widgets_imports.dart';
import '../../categories_views/cat_imports.dart';

Widget categoriesHorizontalList({BuildContext? context}) {
  double height = MediaQuery.of(context!).size.height / 100;
  double width = MediaQuery.of(context).size.width / 100;

  return SizedBox(
    width: MediaQuery.of(context).size.width,
    height: 7 * height,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: CategoriesModel.catList.length,
        itemBuilder: ((context, index) {
          return Row(
            children: [
              InkWell(
                onTap: ()=> AppNavigation.navigateTo(context, const CategoriesViews()),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  width: 34.1 * width,
                  height: 7 * height,
                  decoration: BoxDecoration(
                      color: CategoriesModel.catList[index].color,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(CategoriesModel.catList[index].imagePath!),
                      TextWidget(CategoriesModel.catList[index].text!, false,
                          FontWeight.w600, 1, Colors.white, TextAlign.center),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              )
            ],
          );
        })),
  );
}
