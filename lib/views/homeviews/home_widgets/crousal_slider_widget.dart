import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../model/coursal_model.dart';

Widget crousalSliderWidget() {
  return Stack(
    children: [
      CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 1.9,
          enlargeCenterPage: false,
          scrollDirection: Axis.horizontal,
          autoPlay: true,
        ),
        items: SliderModel.imgList
            .map((item) => Container(
                  margin: const EdgeInsets.all(1.0),
                  child: ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(5.0)),
                      child: Stack(
                        children: <Widget>[
                          Image.network(item, fit: BoxFit.cover, width: 1000.0),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: DotsIndicator(
                              dotsCount: SliderModel.imgList.length,
                              position: double.parse(
                                  SliderModel.imgList.indexOf(item).toString()),
                              decorator: DotsDecorator(
                                color: Colors.white,
                                size: const Size.square(9.0),
                                activeSize: const Size(15.0, 9.0),
                                activeShape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                              ),
                            ),
                          ),
                        ],
                      )),
                ))
            .toList(),
      ),
    ],
  );
}
