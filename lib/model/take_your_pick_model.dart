class TakeYourPickModel {
  String? imagePath;
  String? text;
  String? min;
  String? kcal;

  TakeYourPickModel({this.imagePath, this.text, this.min, this.kcal});

  static List<TakeYourPickModel> takeyourPickList = [
    TakeYourPickModel(
        imagePath:
            "https://www.awesomecuisine.com/wp-content/uploads/2014/03/chicken-tikka.jpg",
        kcal: "267 KCAl",
        min: "5 min",
        text: "Fresh Tikka"),
    TakeYourPickModel(
        imagePath:
            "https://carameltintedlife.com/wp-content/uploads/2022/02/kadai-paneer-3.jpg",
        kcal:"267 KCAl",
        min: "5 min",
        text: "Fresh Paneer "),
    TakeYourPickModel(
        imagePath:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Hyderabadi_Chicken_Biryani.jpg/640px-Hyderabadi_Chicken_Biryani.jpg",
        kcal: "267 KCAl",
        min: "5 min",
        text: "Fresh Biryani"),
    TakeYourPickModel(
        imagePath:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGMOrZrm27Ob3LrxybEGug7O1DxG1qHn4pTQ&usqp=CAU",
        kcal: "267 KCAl",
        min: "5 min",
        text: "Chicken Karahi"),
    TakeYourPickModel(
        imagePath:
            "https://www.indianhealthyrecipes.com/wp-content/uploads/2021/05/pomegranate-juice-recipe-500x375.jpg",
        kcal: "267 KCAl",
        min: "5 min",
        text: "Fresh Juice"),
  ];
}
