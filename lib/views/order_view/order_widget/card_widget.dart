import 'package:flutter/material.dart';
import 'package:rapidgorcery/utils/app_strings.dart';

import '../../../model/order_status.dart';
import '../../../widgets/widgets_imports.dart';

Widget cardView({BuildContext? context}) {
  
   var height = MediaQuery.of(context!).size.height / 100;
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal:8.0, vertical: 15),
 child:  ListView.builder(
  shrinkWrap: true,
  itemCount: OnGoingModel.ongoingmodelList.length,
  itemBuilder: (context, index) {
   return  Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
      height: 21 * height,
            padding: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              orderID(context,  OnGoingModel.ongoingmodelList[index].orderId!),
              const SizedBox(
                height: 5,
              ),
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 1,
              ),
              const SizedBox(
                height: 5,
              ),
              totalBill(context, "\$${OnGoingModel.ongoingmodelList[index].totalcost!}"),
              const SizedBox(
                height: 5,
              ),
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 1,
              ),
              const SizedBox(
                height: 5,
              ),
              status(context, OnGoingModel.ongoingmodelList[index].status!, OnGoingModel.ongoingmodelList[index].color!),
              const SizedBox(
                height: 5,
              ),
            
            ])));
    
  })
     );
}

Widget orderID(BuildContext context, String orderID) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      TextWidget(AppStrings.check__out__order__id, false, FontWeight.w800, 1,
          Theme.of(context).textTheme.headline2!.color!, TextAlign.start),
      TextWidget(orderID, false, FontWeight.w800, 1,
          Theme.of(context).primaryColor, TextAlign.start),
    ],
  );
}

Widget totalBill(BuildContext context, String orderID) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      TextWidget(AppStrings.total___price, false, FontWeight.w800, 1,
          Theme.of(context).textTheme.headline2!.color!, TextAlign.start),
      TextWidget(orderID, false, FontWeight.w800, 1,
          Theme.of(context).primaryColor, TextAlign.start),
    ],
  );
}

Widget status(BuildContext context, String orderID, Color color) {
  var height = MediaQuery.of(context).size.height / 100;
    var width = MediaQuery.of(context).size.width / 100;
 
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      TextWidget(AppStrings.total___price, false, FontWeight.w800, 1,
          Theme.of(context).textTheme.headline2!.color!, TextAlign.start),
      Container(
    height: 4.9 * height,
        width: 27.7 * width,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
        child: Center(
          child: TextWidget(orderID, false, FontWeight.w800, 1,
              Colors.white, TextAlign.start),
        ),
      ),
    ],
  );
}