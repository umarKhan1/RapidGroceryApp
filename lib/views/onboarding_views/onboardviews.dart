part of 'imports_onboard.dart';

class OnBoardViews extends StatefulWidget {
  const OnBoardViews({super.key});

  @override
  State<OnBoardViews> createState() => _OnBoardViewsState();
}

class _OnBoardViewsState extends State<OnBoardViews> {
  late PageController controller;
  int currentPage = 0;
  @override
  void initState() {
    controller = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 100;
    var width = MediaQuery.of(context).size.width / 100;
    debugPrint(height.toString() + width.toString());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: ListView(
        
            children: [
            SizedBox(
              height: 77 * height,
              child: PageView.builder(
                  controller: controller,
                  itemCount: OnBoadingModel.onboardingList.length,
                  physics: const BouncingScrollPhysics(),
                  
                  onPageChanged: (value) => setState(() => currentPage = value),
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: List.generate(
                                3,
                                (index) =>
                                    lineWidget(context, currentPage, index))),
                        SizedBox(
                          height: 15.4 * height,
                        ),
                        Container(
                          height: 35 * height,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(OnBoadingModel
                                    .onboardingList[index].imagesPath
                                    .toString()),
                                fit: BoxFit.contain),
                          ),
                        ),
                        SizedBox(
                          height: 5.2 * height,
                        ),
                        TextWidget(
                            OnBoadingModel.onboardingList[index].title
                                .toString(),
                            false,
                            FontWeight.bold,
                            2,
                            Theme.of(context).textTheme.headline1!.color!,
                            TextAlign.center),
                        SizedBox(
                          height: 4.8 * height,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: TextWidget(
                              OnBoadingModel.onboardingList[index].subtitle
                                  .toString(),
                              false,
                              FontWeight.w500,
                              1.3,
                              Theme.of(context).textTheme.headline2!.color!,
                              TextAlign.center),
                        ),
                      ],
                    );
                  })),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal:58.0),
              child: buttonWidget(
                  onPressed: () {
                    if (currentPage == 2) {
                      AppNavigation.navigateReplacement(context,   LoginView());
                    } else {
                      controller.nextPage(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeIn,
                      );
                    }
                  },
                  context: context,
                  text: currentPage == 2
                      ? AppStrings.onBoarding2___last__button
                      : AppStrings.onBoarding______buttton____next__text_),
            )
          ]),
        ),
      ),
    );
  }
}
