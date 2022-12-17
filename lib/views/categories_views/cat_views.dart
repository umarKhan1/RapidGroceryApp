part of 'cat_imports.dart';

class CategoriesViews extends StatelessWidget {
  const CategoriesViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarWidget(
          istitle: true,
          context: context,
          text: "Fruits",
        ),
        body: catBuNameWidget(context: context));
  }
}
