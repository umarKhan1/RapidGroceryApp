class HomeBigHorizontalList {
  String? imagePath;
  String? mins;
  String? kcal;
  String? title;

  HomeBigHorizontalList({this.imagePath, this.kcal, this.mins, this.title});

  static List<HomeBigHorizontalList> homeBigList = [
    HomeBigHorizontalList(
        imagePath:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6ww15tT7FMVTo3frH7FLRBszsCWPmxj_ehg&usqp=CAU",
        title: "Custard",
        mins: " 10 mins",
        kcal: "267 kcal"),
    HomeBigHorizontalList(
        imagePath:
            "https://food-images.files.bbci.co.uk/food/recipes/arrabiatta_pasta_47164_16x9.jpg",
        title: "Pasta",
        mins: " 10 mins",
        kcal: "267 kcal"),
    HomeBigHorizontalList(
        imagePath:
            "https://media-cdn.greatbritishchefs.com/media/cqfbszpf/pali-hill0064-selects.jpg?mode=crop&width=1426&height=713",
        title: "Masala Dhosa",
        mins: " 10 mins",
        kcal: "267 kcal"),
    HomeBigHorizontalList(
        imagePath:
            "https://parade.com/.image/t_share/MTkwNTgxMjkxNjk3NTc5OTAw/istock-1203599963-jpg.jpg",
        title: "Vegetables",
        mins: " 10 mins",
        kcal: "267 kcal"),
    HomeBigHorizontalList(
        imagePath:
            "https://hips.hearstapps.com/hmg-prod/images/20190503-delish-pineapple-baked-salmon-horizontal-ehg-450-1557771120.jpg",
        title: "Fish",
        mins: " 10 mins",
        kcal: "267 kcal"),
  ];
}
