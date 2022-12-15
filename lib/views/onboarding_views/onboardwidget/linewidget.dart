
import 'package:flutter/material.dart';

Container lineWidget(BuildContext context, currentPage, index){
  var width = MediaQuery.of(context).size.width /100;
  return  currentPage == index?  Container(width: 29 * width,
            height: 5,
          color: Colors.green,
            ): Container(width: 29 * width,
            height: 5,
          color: Colors.grey,
            );
}