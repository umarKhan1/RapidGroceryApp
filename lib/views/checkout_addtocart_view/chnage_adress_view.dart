part of './checkout_imports.dart';

class ChangeLocationView extends StatelessWidget {
  const ChangeLocationView({super.key});

  @override
  Widget build(BuildContext context) {
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
            AppStrings.change__deliver__adress,
            false,
            FontWeight.w600,
            1,
            Theme.of(context).textTheme.headline1!.color!,
            TextAlign.start),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
        child: Column(
          children: [
            locationWidget(context),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: (){
                AppNavigation.navigateTo(context, const
                 GoogleMapView());
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).primaryColor,
                ),
                child: const Center(
                  child: TextWidget(AppStrings.add__new__address_text___, false,
                      FontWeight.w800, 1, Colors.white, TextAlign.start),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
