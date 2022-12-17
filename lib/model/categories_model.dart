import 'package:flutter/material.dart';
import 'package:rapidgorcery/utils/images_string.dart';

class CategoriesModel {
  String? imagePath;
  Color? color;
  String? text;
  CategoriesModel({this.imagePath, this.color, this.text});

  static List<CategoriesModel> catList = [
    CategoriesModel(
        color: Colors.red[700],
        imagePath: AppImagesPaths.home__vertical__list___Cat__food,
        text: "Foods"),
    CategoriesModel(
        color: Colors.green[700],
        imagePath: AppImagesPaths.home__vertical__list___Cat__vegi,
        text: "Health"),
    CategoriesModel(
        color: Colors.purple[700],
        imagePath: AppImagesPaths.home__vertical__list___Cat__salad,
        text: "Fruits"),
  ];
}

class CatergoriesbyName {
  String? imagePath;
  String? title;
  String? officalPrice;
  String? offer;
  String? cutPrice;
  bool? isofferShow;
  Color? color;

  CatergoriesbyName(
      {this.imagePath,
      this.title,
      this.officalPrice,
      this.offer,
      this.isofferShow,
      this.cutPrice,
      this.color});

  static List<CatergoriesbyName> catByNameList = [
    CatergoriesbyName(   imagePath:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6ww15tT7FMVTo3frH7FLRBszsCWPmxj_ehg&usqp=CAU",
        title: "Custard",
        cutPrice: "19",
        isofferShow: true,
        offer: "Free Ship", 
        color: Colors.red,
        officalPrice: "5",
        ),
        
         CatergoriesbyName(   imagePath:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGMOrZrm27Ob3LrxybEGug7O1DxG1qHn4pTQ&usqp=CAU",
        title: "Chicken",
        cutPrice: "19",
        isofferShow: false,
        offer: "Free Ship", 
        color: Colors.black,
        officalPrice: "5",
        ),
        
         CatergoriesbyName(   imagePath:
         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6ww15tT7FMVTo3frH7FLRBszsCWPmxj_ehg&usqp=CAU",
        title: "Custard",
        cutPrice: "19",
        isofferShow: false,
        offer: "Free Ship", 
        color: Colors.red,
        officalPrice: "5",
        ),
        
         CatergoriesbyName(   imagePath:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6ww15tT7FMVTo3frH7FLRBszsCWPmxj_ehg&usqp=CAU",
        title: "Custard",
        cutPrice: "19",
        isofferShow: true,
        offer: "Free Ship", 
        color: Colors.blue,
        officalPrice: "5",
        ),
        
         CatergoriesbyName(   imagePath:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6ww15tT7FMVTo3frH7FLRBszsCWPmxj_ehg&usqp=CAU",
        title: "Custard",
        cutPrice: "19",
        isofferShow: false,
        offer: "Free Ship", 
        color: Colors.red,
        officalPrice: "5",
        ),
        
         CatergoriesbyName(   imagePath:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6ww15tT7FMVTo3frH7FLRBszsCWPmxj_ehg&usqp=CAU",
        title: "Custard",
        cutPrice: "19",
        isofferShow: false,
        offer: "Free Ship", 
        color: Colors.red,
        officalPrice: "5",
        ),
        
         CatergoriesbyName(   imagePath:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6ww15tT7FMVTo3frH7FLRBszsCWPmxj_ehg&usqp=CAU",
        title: "Custard",
        cutPrice: "19",
        isofferShow: true,
        offer: "Free Ship", 
        color: Colors.blue,
        officalPrice: "5",
        ),
        

  ];
}
