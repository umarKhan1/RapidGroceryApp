part of './search_imports.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 100;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0) + const EdgeInsets.only(top: 10),
          child: Column(children: [
            searchViewWidget(context: context),
            SizedBox(
                height: 70.2 * height,
                child: Image.asset(
                  AppImagesPaths.searchPic_,
                  fit: BoxFit.cover,
                ))
          ]),
        ),
      ),
    );
  }
}
