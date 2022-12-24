import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_strings.dart';
import '../../../widgets/widgets_imports.dart';

Widget checkOutVerticalList({BuildContext? context}) {
  double height = MediaQuery.of(context!).size.height / 100;
  double width = MediaQuery.of(context).size.width / 100;
  return SizedBox(
    height: 59 * height,
    child: ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 22,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 11.2 * height,
                    width: 22.2 * width,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: FancyShimmerImage(
                        boxFit: BoxFit.cover,
                        imageUrl:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6ww15tT7FMVTo3frH7FLRBszsCWPmxj_ehg&usqp=CAU",
                        errorWidget: Image.network(
                            'https://i0.wp.com/www.dobitaobyte.com.br/wp-content/uploads/2016/02/no_image.png?ssl=1'),
                      ),
                    )),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    TextWidget(
                        AppStrings.home___detail____text,
                        false,
                        FontWeight.w600,
                        1.1,
                        Theme.of(context).textTheme.headline1!.color!,
                        TextAlign.start),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                            AppStrings.home___detail__main__text,
                            false,
                            FontWeight.w600,
                            1.1,
                            Theme.of(context).primaryColor,
                            TextAlign.start),
                        SizedBox(
                          width: 19.4 * width,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 4.1 * height,
                              width: 8.1 * width,
                              padding: const EdgeInsets.only(bottom: 15),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                  child: Icon(
                                Icons.minimize,
                                size: 2.5 * height,
                                color: Colors.black,
                              )),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const TextWidget("0", false, FontWeight.w500, 1.2,
                                Colors.black, TextAlign.start),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 3.6 * height,
                              width: 8.1 * width,
                              padding: const EdgeInsets.only(bottom: 0),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                  child: Icon(
                                Icons.add,
                                size: 2.5 * height,
                                color: Colors.black,
                              )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            )
          ],
        );
      },
    ),
  );
}
