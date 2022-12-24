// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../utils/app_strings.dart';
import '../../../widgets/widgets_imports.dart';

// ignore: must_be_immutable
class AnimatedModalWidget extends StatefulWidget {
  bool? animated;
  AnimatedModalWidget({super.key, this.animated});

  @override
  State<AnimatedModalWidget> createState() => _AnimatedModalWidgetState();
}

class _AnimatedModalWidgetState extends State<AnimatedModalWidget> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 100;
    double width = MediaQuery.of(context).size.width / 100;
    return Align(
      alignment: Alignment.bottomCenter,
      child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        height: widget.animated == true ? 52 * height : 0,
        width: 400,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            color: Colors.green.withOpacity(1)),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.cancel_outlined,
                        color: Colors.white,
                        size: 3.5 * height,
                      ),
                      onPressed: () {
                        setState(() {
                          widget.animated = false;
                        });
                      },
                    ),
                    SizedBox(
                      width: 13.8 * width,
                    ),
                    const Text(AppStrings.model__add__new__items,
                        textScaleFactor: 1.5,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600)),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Divider(color: Colors.white, thickness: 1),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 9.1 * height,
                      width: 16.6 * width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red),
                    ),
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
                        const TextWidget(
                            AppStrings.home___detail____text,
                            false,
                            FontWeight.w800,
                            1.2,
                            Colors.white,
                            TextAlign.start),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const TextWidget(
                                AppStrings.model__price___per__kg,
                                false,
                                FontWeight.w500,
                                1.2,
                                Colors.white,
                                TextAlign.start),
                            SizedBox(
                              width: 27.7 * width,
                            ),
                            const TextWidget(
                                AppStrings.home___detail__main__text,
                                false,
                                FontWeight.w600,
                                1.2,
                                Colors.white,
                                TextAlign.start),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 2.8 * height,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Divider(color: Colors.white, thickness: 1),
                ),
                SizedBox(
                  height: 2.8 * height,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      TextWidget(AppStrings.model__amount__text, false,
                          FontWeight.w500, 1.4, Colors.white, TextAlign.start),
                      TextWidget(AppStrings.home___detail__main__text, false,
                          FontWeight.w500, 1.2, Colors.white, TextAlign.start),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.8 * height,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      TextWidget(AppStrings.model__total__text, false,
                          FontWeight.w500, 1.4, Colors.white, TextAlign.start),
                      TextWidget(AppStrings.home___detail__main__text, false,
                          FontWeight.w800, 1.8, Colors.white, TextAlign.start),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Divider(color: Colors.white, thickness: 1),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 5.6 * height,
                          width: 11.1 * width,
                          padding: EdgeInsets.only(bottom: 15),
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Icon(
                            Icons.minimize,
                            color: Colors.white,
                          )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        TextWidget("0", false, FontWeight.w500, 1.4,
                            Colors.white, TextAlign.start),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 5.6 * height,
                          width: 11.1 * width,
                          padding: EdgeInsets.only(bottom: 0),
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
                        ),
                      ],
                    ),
                    Container(
                      height: 4.9 * height,
                      width: 50 * width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6)),
                      child: Center(
                        child: TextWidget(
                            AppStrings.add__to__cart___text__text.toString(),
                            false,
                            FontWeight.bold,
                            1.2,
                            Theme.of(context).textTheme.headline1!.color!,
                            TextAlign.center),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
