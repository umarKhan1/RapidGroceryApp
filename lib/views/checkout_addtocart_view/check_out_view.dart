// ignore_for_file: prefer_const_constructors

part of 'checkout_imports.dart';

class CheckOutView extends StatelessWidget {
  const CheckOutView({super.key});
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 100;
    var width = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
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
            AppStrings.add__to___check___out,
            false,
            FontWeight.w600,
            1,
            Theme.of(context).textTheme.headline1!.color!,
            TextAlign.start),
      ),
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.all(10.0) + EdgeInsets.only(bottom: 100),
          child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                        AppStrings.check__out__order__id,
                        false,
                        FontWeight.w600,
                        1.3,
                        Theme.of(context).textTheme.headline2!.color!,
                        TextAlign.start),
                    TextWidget("#D12354", false, FontWeight.w500, 1.3,
                        Theme.of(context).primaryColor, TextAlign.start),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                locationWidget(context),
                dateAndTime(context),
                Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                        height: 193,
                        padding: const EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWidget(
                                  AppStrings.order___bill___Text,
                                  false,
                                  FontWeight.w800,
                                  1,
                                  Theme.of(context).textTheme.headline2!.color!,
                                  TextAlign.start),
                              const SizedBox(
                                height: 20,
                              ),
                              orderBill(
                                context: context,
                                showGreen: false,
                                pricrtext: AppStrings.delivery_total_price,
                                price: AppStrings.home___detail__main__text,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Divider(
                                color: Colors.grey.withOpacity(0.5),
                                thickness: 1,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              orderBill(
                                context: context,
                                showGreen: false,
                                pricrtext: AppStrings.delivery__price,
                                price: AppStrings.home___detail__main__text,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Divider(
                                color: Colors.grey.withOpacity(0.5),
                                thickness: 1,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              orderBill(
                                context: context,
                                showGreen: true,
                                pricrtext: AppStrings.total___price,
                                price: AppStrings.home___detail__main__text,
                              ),
                            ]))),
                Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                        height: 27.1 * height,
                        padding: const EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWidget(
                                  AppStrings.payment__method__text___,
                                  false,
                                  FontWeight.w800,
                                  1,
                                  Theme.of(context).textTheme.headline2!.color!,
                                  TextAlign.start),
                              SizedBox(
                                height: 4.3 * height,
                              ),
                              Container(
                                height: 5.6 * height,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      width: 1,
                                    )),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextWidget(
                                        AppStrings.pay__with__card,
                                        false,
                                        FontWeight.w800,
                                        1,
                                        Theme.of(context)
                                            .textTheme
                                            .headline2!
                                            .color!,
                                        TextAlign.start),
                                    Container(
                                      height: 3.5 * height,
                                      width: 6.9 * width,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Theme.of(context).primaryColor),
                                      child: const Center(
                                          child: FaIcon(
                                        FontAwesomeIcons.check,
                                        color: Colors.white,
                                        size: 15,
                                      )),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 5.6 * height,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      width: 1,
                                    )),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextWidget(
                                        AppStrings.pay__with__cash,
                                        false,
                                        FontWeight.w800,
                                        1,
                                        Theme.of(context)
                                            .textTheme
                                            .headline2!
                                            .color!,
                                        TextAlign.start),
                                    Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(width: 1)),
                                    )
                                  ],
                                ),
                              )
                            ]))),
                Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                        height: 27.1 * height,
                        padding: const EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWidget(
                                  AppStrings.note___order,
                                  false,
                                  FontWeight.w800,
                                  1,
                                  Theme.of(context).textTheme.headline2!.color!,
                                  TextAlign.start),
                              const SizedBox(
                                height: 20,
                              ),
                              const SizedBox(
                                  height: 40,
                                  child: TextField(
                                    maxLines: 8,
                                    decoration: InputDecoration(
                                        hintText:
                                            "Type Some Thing you want here..",
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none),
                                  ))
                            ]))),
              ]),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: 12.6 * height,
            child: InkWell(
              onTap: () {
                dialogView(context: context);
              },
              child: Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: TextWidget(AppStrings.confirm___Order, false,
                            FontWeight.w800, 1, Colors.white, TextAlign.start),
                      )),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
