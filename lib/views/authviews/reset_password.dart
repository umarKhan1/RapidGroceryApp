part of 'authimports.dart';

// ignore: must_be_immutable
class ResetPasswordView extends StatelessWidget {
  ResetPasswordView({super.key});
  TextEditingController forgotPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 100;
    return Scaffold(
      appBar: appBarWidget(context: context, istitle: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Center(
                child: TextWidget(
                    AppStrings.reset___password__view,
                    false,
                    FontWeight.w800,
                    2.2,
                    Theme.of(context).textTheme.headline1!.color!,
                    TextAlign.center)),
            SizedBox(
              height: 2.8 * height,
            ),
            Center(
                child: TextWidget(
                    AppStrings.reset__pass___decription,
                    false,
                    FontWeight.w400,
                    1.3,
                    Theme.of(context).textTheme.headline2!.color!,
                    TextAlign.center)),
            SizedBox(
              height: 5.0 * height,
            ),
            TextFieldWidget(
              AppStrings.reset__pass___newpass,
              "",
              "",
              isEmail: true,
              controller: forgotPasswordController,
            ),
             SizedBox(
              height: 3.0 * height,
            ),
            TextFieldWidget(
              AppStrings.reset__pass___confirmpass,
              "",
              "",
              isEmail: true,
              controller: forgotPasswordController,
            ),
            SizedBox(
              height: 6.0 * height,
            ),
            buttonWidget(
                text: AppStrings.reset___password__view,
                context: context,
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}
