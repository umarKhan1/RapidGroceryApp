part of 'utils_imports.dart';

class MyTheme {
  static final lightThemeData = ThemeData(
    primaryColor: const Color(0xff64BA02),
    fontFamily: "SFPRODISPLAYREGULAR",
    textTheme: const TextTheme(
        headline1: TextStyle(
          color: Colors.black,
        ),
        headline2: TextStyle(
          color: Colors.grey,
        ),
        headline3: TextStyle(
          color: Colors.white,
        )),
bottomNavigationBarTheme: const BottomNavigationBarThemeData(
  selectedItemColor: Colors.green,
  unselectedItemColor: Colors.grey
),
    toggleButtonsTheme: const ToggleButtonsThemeData(color: Color(0xffdc3b50)),
    iconTheme: const IconThemeData(color: Colors.red),
    inputDecorationTheme: const InputDecorationTheme(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black,
        ),
      ),
     disabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black)),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.black, width: 2.0),
      ),
      fillColor: Colors.white,

    ),
  );
}
