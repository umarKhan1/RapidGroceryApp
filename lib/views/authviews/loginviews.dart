part of './authimports.dart';

// ignore: must_be_immutable
class LoginView extends StatelessWidget {
  LoginView({super.key});
  TextEditingController loginText = TextEditingController();
  TextEditingController passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 100;

    return Scaffold(
        body: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 8.4 * height,
            ),
            Center(
                child: Container(
              height: 50,
              width: 63,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppImagesPaths.app_____Logo),
                      fit: BoxFit.cover)),
            )),
            const SizedBox(
              height: 10,
            ),
            TextWidget(
                AppStrings.app____Main_____Name,
                false,
                FontWeight.w600,
                1.2,
                Theme.of(context).textTheme.headline1!.color!,
                TextAlign.center),
            SizedBox(
              height: 7.5 * height,
            ),
            TextWidget(
                AppStrings.loginview________welcome__Back,
                false,
                FontWeight.w800,
                1.9,
                Theme.of(context).textTheme.headline1!.color!,
                TextAlign.center),
            SizedBox(
              height: 7.4 * height,
            ),
            TextFieldWidget(
              AppStrings.loginview________email__String,
              "",
              "",
              isEmail: true,
              controller: loginText,
            ),
            const SizedBox(
              height: 15,
            ),
            TextFieldWidget(
              AppStrings.loginview________Password__String,
              "",
              "",
              isPass: true,
              isPassword: true,
              controller: passText,
            ),
            SizedBox(
              height: 2.8 * height,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                onTap: () {
                  AppNavigation.navigateTo(context, ForgotPasswordView());
                },
                child: TextWidget(
                    AppStrings.loginview________forgetpass__String,
                    false,
                    FontWeight.w400,
                    1.1,
                    Theme.of(context).primaryColor,
                    TextAlign.end),
              ),
            ),
            SizedBox(
              height: 5.6 * height,
            ),
            buttonWidget(
                context: context,
                text: AppStrings.login_____SignIn__Text,
                onPressed: () {
                  AppNavigation.navigateReplacement(context, const HomeViews());
                }),
            SizedBox(
              height: 8.2 * height,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                containerlineWidget(context),
                TextWidget(
                    AppStrings.loginview________or__String,
                    false,
                    FontWeight.w600,
                    1.2,
                    Theme.of(context).textTheme.headline2!.color!,
                    TextAlign.center),
                containerlineWidget(context),
              ],
            ),
            SizedBox(
              height: 6.2 * height,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                socialWidget(
                    context: context,
                    icons: FontAwesomeIcons.facebookF,
                    isfb: true,
                    onPressed: () {}),
                const SizedBox(
                  width: 20,
                ),
                socialWidget(
                    context: context,
                    icons: FontAwesomeIcons.google,
                    isfb: false,
                    onPressed: () {}),
              ],
            ),
            SizedBox(
              height: 5.2 * height,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(
                    AppStrings.loginview________dontaccount__String,
                    false,
                    FontWeight.w700,
                    1.1,
                    Theme.of(context).textTheme.headline2!.color!,
                    TextAlign.center),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    AppNavigation.navigateTo(context, const SignupView());
                  },
                  child: TextWidget(
                      AppStrings.loginview________signup__String,
                      false,
                      FontWeight.w700,
                      1.1,
                      Theme.of(context).primaryColor,
                      TextAlign.center),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
