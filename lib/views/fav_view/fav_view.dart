part of './fav_imports.dart';

class FavViews extends StatelessWidget {
  const FavViews({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 100;
    var width = MediaQuery.of(context).size.width / 100;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              AppNavigation.navigatorPop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          elevation: 0.5,
          title: TextWidget(
              AppStrings.fav____View__appbar__text,
              false,
              FontWeight.w600,
              1,
              Theme.of(context).textTheme.headline1!.color!,
              TextAlign.start),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: CatergoriesbyName.catByNameList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 1.4),
                ),
                itemBuilder: ((context, index) {
                  return Card(
                    elevation: 1,
                    child: Container(
                      height: 31.4 * height,
                      width: 45.5 * width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      child: Stack(
                        children: [
                          Container(
                            height: 18.2 * height,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                            ),
                            child: FancyShimmerImage(
                              imageUrl:
                                  CatergoriesbyName.catByNameList[0].imagePath!,
                              errorWidget: Image.network(
                                  'https://i0.wp.com/www.dobitaobyte.com.br/wp-content/uploads/2016/02/no_image.png?ssl=1'),
                            ),
                          ),
                          Positioned(
                              top: 10,
                              left: 30.6 * width,
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
                              top: 19.6 * height,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextWidget(
                                        CatergoriesbyName
                                            .catByNameList[0].title!,
                                        false,
                                        FontWeight.w600,
                                        1,
                                        Theme.of(context)
                                            .textTheme
                                            .headline1!
                                            .color!,
                                        TextAlign.center),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    TextWidget(
                                        "Price Per KG",
                                        false,
                                        FontWeight.w600,
                                        1,
                                        Theme.of(context)
                                            .textTheme
                                            .headline2!
                                            .color!,
                                        TextAlign.center),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        TextWidget(
                                            "\$ ${CatergoriesbyName.catByNameList[0].officalPrice!}",
                                            false,
                                            FontWeight.w600,
                                            1,
                                            Theme.of(context).primaryColor,
                                            TextAlign.center),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        TextWidget(
                                            "\$  ${CatergoriesbyName.catByNameList[0].cutPrice!}3",
                                            true,
                                            FontWeight.w600,
                                            1,
                                            Theme.of(context)
                                                .textTheme
                                                .headline2!
                                                .color!,
                                            TextAlign.center),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                  );
                }))));
  }
}
