import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:rapidgorcery/model/take_your_pick_model.dart';

import '../../../widgets/widgets_imports.dart';
import '../../detailviews/detail_imports.dart';

Widget takeYourPick({BuildContext? context}){
    double height = MediaQuery.of(context!).size.height / 100;
        double width = MediaQuery.of(context).size.width / 100;
  return SizedBox(
  height: 26.6 * height,

    child: ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: TakeYourPickModel.takeyourPickList.length,
      itemBuilder: (context, index) {
     return  InkWell(
         onTap: (() => AppNavigation.navigateTo(context, const  DetailView())),
       child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 1,
                      child: Container(
     
                        width: 45 * width,
                        decoration:
                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              child: SizedBox(
                                height: 15.4 * height,
                                child: FancyShimmerImage(
                                  imageUrl:
                                      TakeYourPickModel.takeyourPickList[index].imagePath!,
                                  errorWidget: Image.network(
                                      'https://i0.wp.com/www.dobitaobyte.com.br/wp-content/uploads/2016/02/no_image.png?ssl=1'),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5.0),
                              child: TextWidget(
                                TakeYourPickModel.takeyourPickList[index].text!,
                                  false,
                                  FontWeight.w800,
                                  1.3,
                                  Theme.of(context).textTheme.headline1!.color!,
                                  TextAlign.center),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0, ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  TextWidget(
                                    TakeYourPickModel.takeyourPickList[index].min!,
                                      false,
                                      FontWeight.w800,
                                      1,
                                      Theme.of(context).textTheme.headline2!.color!,
                                      TextAlign.center),
                                  TextWidget(
                                     TakeYourPickModel.takeyourPickList[index].kcal!,
                                      false,
                                      FontWeight.w800,
                                      1,
                                      Theme.of(context).textTheme.headline2!.color!,
                                      TextAlign.center),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
     );

    },  
    ),
  );
  
  }