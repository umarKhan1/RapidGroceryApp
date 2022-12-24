import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

import '../../../model/big_horizontal_model.dart';
import '../../../widgets/widgets_imports.dart';
import '../../detailviews/detail_imports.dart';

Widget homeBigHorizontalList({BuildContext? context}) {
  double height = MediaQuery.of(context!).size.height / 100;
  double width = MediaQuery.of(context).size.width / 100;

  return SizedBox(
    height: 24.1 * height,
    child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: HomeBigHorizontalList.homeBigList.length,
        itemBuilder: ((context, index) {
          return Row(
            children: [
              InkWell(
                onTap: (() =>
                    AppNavigation.navigateTo(context, const DetailView())),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: FancyShimmerImage(
                          boxFit: BoxFit.cover,
                          imageUrl: HomeBigHorizontalList
                              .homeBigList[index].imagePath!,
                          errorWidget: Image.network(
                              'https://i0.wp.com/www.dobitaobyte.com.br/wp-content/uploads/2016/02/no_image.png?ssl=1'),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 10,
                        left: 10,
                        child: Container(
                          height: 4.7 * height,
                          width: 9.7 * width,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[900],
                          ),
                          child: const Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                        )),
                    Positioned(
                        top: 14 * height,
                        left: 10,
                        child: TextWidget(
                            HomeBigHorizontalList.homeBigList[index].title!,
                            false,
                            FontWeight.w600,
                            1.5,
                            Colors.white,
                            TextAlign.start)),
                    Positioned(
                        top: 19.6 * height,
                        left: 10,
                        child: Row(
                          children: [
                            TextWidget(
                                HomeBigHorizontalList.homeBigList[index].mins!,
                                false,
                                FontWeight.w600,
                                1,
                                Colors.white,
                                TextAlign.start),
                            const SizedBox(
                              width: 25,
                            ),
                            TextWidget(
                                HomeBigHorizontalList.homeBigList[index].kcal!,
                                false,
                                FontWeight.w600,
                                1,
                                Colors.white,
                                TextAlign.start),
                          ],
                        ))
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          );
        })),
  );
}
