part of 'detail_imports.dart';

class DetailView extends StatefulWidget {
  const DetailView({super.key});

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> with TickerProviderStateMixin {
  late PageController controller;
  bool animatedHeight = false;
  int currentPage = 0;
  @override
  void initState() {
    controller = PageController();
    animationController = BottomSheet.createAnimationController(this);
    animationController?.duration = const Duration(seconds: 1);
    super.initState();
  }

  AnimationController? animationController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 250.0,
          floating: false,
          pinned: false,
          backgroundColor: Colors.transparent,
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              height: 287,
              color: Colors.grey,
              child: PageView.builder(
                  controller: controller,
                  itemCount: 5,
                  onPageChanged: (value) => setState(() => currentPage = value),
                  itemBuilder: ((context, index) {
                    return Stack(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: FancyShimmerImage(
                            boxFit: BoxFit.cover,
                            imageUrl:
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6ww15tT7FMVTo3frH7FLRBszsCWPmxj_ehg&usqp=CAU",
                            errorWidget: Image.network(
                                'https://i0.wp.com/www.dobitaobyte.com.br/wp-content/uploads/2016/02/no_image.png?ssl=1'),
                          ),
                        ),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 28.0),
                              child: DotsIndicator(
                                dotsCount: 5,
                                position: double.parse(index.toString()),
                              ),
                            )),
                      ],
                    );
                  })),
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(childCount: 1, (_, int index) {
          return Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                color: Colors.white),
            height: 600,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Stack(
                children: [
                  ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        TextWidget(
                            AppStrings.home___detail____text,
                            false,
                            FontWeight.w800,
                            1.6,
                            Theme.of(context).textTheme.headline1!.color!,
                            TextAlign.start),
                        const SizedBox(
                          height: 10,
                        ),
                        freeShipWithPriceWidget(
                            context: context,
                            price: AppStrings.home___detail__main__text,
                            cutPrice:
                                AppStrings.home___detail__main___sub____text,
                            offers: AppStrings.home______offer___text),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            emojiWidget(
                                text: AppStrings.home___detail___safe__text,
                                imageString:
                                    AppImagesPaths.safe___Detail___page,
                                context: context),
                            emojiWidget(
                                text: AppStrings
                                    .home__detail_______Quailty___text,
                                imageString:
                                    AppImagesPaths.quality___Detail___page,
                                context: context),
                            emojiWidget(
                                text: AppStrings.home_____fresh____text,
                                imageString: AppImagesPaths.pin___Detail___page,
                                context: context),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const ReadMoreText(
                          AppStrings.home______big__text__text,
                          trimLines: 2,
                          colorClickableText: Colors.pink,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: 'View more',
                          trimExpandedText: 'View less',
                          textScaleFactor: 1,
                          moreStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                          lessStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.favorite,
                                  size: 30,
                                )),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  animatedHeight = true;
                                });
                              },
                              child: Container(
                                height: 44,
                                width: 250,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: TextWidget(
                                        AppStrings.add__to__cart___text__text
                                            .toString(),
                                        false,
                                        FontWeight.bold,
                                        1.2,
                                        Theme.of(context)
                                            .textTheme
                                            .headline3!
                                            .color!,
                                        TextAlign.center)),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextWidget(
                            AppStrings.similar___Product,
                            false,
                            FontWeight.w800,
                            1.6,
                            Theme.of(context).textTheme.headline1!.color!,
                            TextAlign.start),
                        SizedBox(
                            height: 280,
                            child: similarProductWidget(context: context))
                      ]),
                  AnimatedModalWidget(
                    animated: animatedHeight,
                  )
                ],
              ),
            ),
          );
        })),
      ]),
    );
  }
}
