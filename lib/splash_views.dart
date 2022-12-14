
import 'package:flutter/material.dart';
import 'package:rapidgorcery/utils/images_string.dart';
import 'package:rapidgorcery/views/onboarding_views/imports_onboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Navigate();
  }

   // ignore: non_constant_identifier_names
   Navigate() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.pushAndRemoveUntil<dynamic>(
        context,
        MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const OnBoardViews(),
        ),
        (route) => false, //if you want to disable back feature set to false
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 21 * MediaQuery.of(context).size.height /100,
              child: Image.asset(
                AppImagesPaths.app_____Logo,
                fit: BoxFit.cover,
              
             ),
            ),
          ],
        ),
      ),
    );
  }
}
