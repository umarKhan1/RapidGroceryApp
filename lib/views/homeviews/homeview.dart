part of 'home_imports.dart';

class HomeViews extends StatelessWidget {
  const HomeViews({super.key});
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 100;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 4.0, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  searchWidget(context: context),
                  const SizedBox(
                    height: 30,
                  ),
                  categoriesHorizontalList(context: context),
                  SizedBox(
                    height: 4.2 * height,
                  ),
                  crousalSliderWidget(),
                  SizedBox(
                    height: 4.2 * height,
                  ),
                  viewAllWidget(
                      text: AppStrings.home___TakePick___text,
                      context: context),
                  const SizedBox(
                    height: 10,
                  ),
                  takeYourPick(context: context),
                  const SizedBox(
                    height: 20,
                  ),
                  viewAllWidget(
                      text: AppStrings.home___BreakFast___text,
                      context: context),
                  const SizedBox(
                    height: 10,
                  ),
                  TextWidget(
                      AppStrings.home___BreakFast_subTexrt__text,
                      false,
                      FontWeight.w500,
                      1.1,
                      Theme.of(context).textTheme.headline2!.color!,
                      TextAlign.start),
                  const SizedBox(
                    height: 10,
                  ),
homeBigHorizontalList(context: context)

                          ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
