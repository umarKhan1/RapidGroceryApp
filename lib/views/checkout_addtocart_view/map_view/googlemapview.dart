part of '../checkout_imports.dart';

class GoogleMapView extends StatelessWidget {
  const GoogleMapView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: Stack(children: [

            SizedBox(height: 571,
            child: Image.asset(AppImagesPaths.google__map__show),
            ),

Align(
  alignment: Alignment.bottomCenter,
  child: Card(
    shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))),
    
    elevation: 2,child: Container(height: 250, decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))),
    
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           TextWidget(
                AppStrings.back__Text,
                false,
                FontWeight.w700,
                1.3,
                Theme.of(context).textTheme.headline1!.color!,
                TextAlign.start),
                 TextWidget(
                AppStrings.add__new__address_text___,
                false,
                FontWeight.w700,
                1.3,
                Theme.of(context).textTheme.headline1!.color!,
                TextAlign.start),
                              TextWidget(
                AppStrings.save__text,
                false,
                FontWeight.w700,
                1.3,
                Theme.of(context).primaryColor,
                TextAlign.start),


                
        ],),

       const  SizedBox(height: 60,),
mapSearchWidget(context: context),

      ]),
    ),
    ),))
        ]),
      ),
    );
  }
}
