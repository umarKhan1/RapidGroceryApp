part of './checkout_imports.dart';

class AddToCartView extends StatelessWidget {
 const  AddToCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextWidget(
              AppStrings.add__to___cart__main___view__text,
              false,
              FontWeight.w700,
              2.1,
              Theme.of(context).textTheme.headline1!.color!,
              TextAlign.start),
          const SizedBox(
            height: 20,
          ),
          TextWidget(
              AppStrings.add__to___cart__single__items,
              false,
              FontWeight.w600,
              1.5,
              Theme.of(context).textTheme.headline1!.color!,
              TextAlign.start),
          const SizedBox(
            height: 20,
          ),
          checkOutVerticalList(context: context),
          const Spacer(),
          checOutButton(context)
        ]),
      ),
    ));
  }
}
