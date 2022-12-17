import 'package:flutter/material.dart';
import 'package:rapidgorcery/utils/images_string.dart';

import 'views/homeviews/home_imports.dart';

class BottomScreen extends StatefulWidget {
  static const routeName = '/BottomScreen';

  const BottomScreen({Key? key}) : super(key: key);

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  int currentNav = 0;

  reBuild() {
    setState(() {
      currentNav = 0;
    });
  }

  Future<bool> showExitPopup() async {
    return await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Exit?'),
            content: const Text('Are you sure, You want to exit?'),
            actions: [
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(false),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor),
                //return false when click on "NO"
                child: const Text('No'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(true),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                //return true when click on "Yes"
                child: const Text('Yes'),
              ),
            ],
          ),
        ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = <Widget>[
   const HomeViews()
   
    ];
    return WillPopScope(
      onWillPop: showExitPopup,
      child: Scaffold(
        body: Center(
          child: pages.elementAt(currentNav), //New
        ),
        bottomNavigationBar: SizedBox(
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedItemColor:
                Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
            unselectedItemColor:
                Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: TextStyle(
                color: Theme.of(context)
                    .bottomNavigationBarTheme
                    .selectedItemColor),
            unselectedLabelStyle: TextStyle(
                color: Theme.of(context)
                    .bottomNavigationBarTheme
                    .unselectedItemColor),
            currentIndex: currentNav,
            elevation: 2.0,
            items: [
              BottomNavigationBarItem(
                label: "Recipes",
                   icon: Image.asset(AppImagesPaths.bottom____boook___Image,

                  color: Theme.of(context)
                        .bottomNavigationBarTheme
                        .selectedItemColor,
                  )
              ),
              BottomNavigationBarItem(
                  label: "Search",
                 icon: Image.asset(AppImagesPaths.bottom____search___Image,
                  color: Theme.of(context)
                        .bottomNavigationBarTheme
                        .unselectedItemColor,
                  )),
              BottomNavigationBarItem(
                  label: "Cart",
                  icon: Image.asset(AppImagesPaths.bottom____basket___Image,
                  color: Theme.of(context)
                        .bottomNavigationBarTheme
                        .unselectedItemColor,
                  )),
                     
              BottomNavigationBarItem(
                  label: "Favourites",

                  icon: Image.asset(AppImagesPaths.bottom____fav___Image,
                  color: Theme.of(context)
                        .bottomNavigationBarTheme
                        .unselectedItemColor,
                  )),
                                
              BottomNavigationBarItem(
                  label: "Profile",
                  
                  icon: Image.asset(AppImagesPaths.bottom____profile___Image,
                  
                  color: Theme.of(context)
                        .bottomNavigationBarTheme
                        .unselectedItemColor,
                  ))
            ],
            onTap: (index) {
              setState(() {
                currentNav = index;
              });
            },
          ),
        ),
      ),
    );
  }
}