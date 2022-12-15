part of './authimports.dart';

class OtpVerficationView extends StatelessWidget {
  const OtpVerficationView({super.key});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 100;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            AppNavigation.navigatorPop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Center(
                child: TextWidget(
                    AppStrings.signup___Otp________text__String,
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
                    AppStrings.signup___Otp_____subText__String,
                    false,
                    FontWeight.w400,
                    1.4,
                    Theme.of(context).textTheme.headline2!.color!,
                    TextAlign.center)),
            SizedBox(
              height: 10.0 * height,
            ),
            OTPTextField(
              otpFieldStyle: OtpFieldStyle(
                  enabledBorderColor: Theme.of(context).primaryColor,
                  borderColor: Theme.of(context).primaryColor),
              length: 4,
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              fieldWidth: 55,
              style: const TextStyle(fontSize: 17),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.box,
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
             SizedBox(
              height: 6.0 * height,
            ),
            TweenAnimationBuilder<Duration>(
  duration: const Duration(seconds: 20),
  tween: Tween(begin:const  Duration(seconds: 20), end: Duration.zero),
  onEnd: () {
    print('Timer ended');
  },
  builder: (BuildContext context, Duration value, Widget? child) {

    final seconds = value.inSeconds % 60;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Text('${AppStrings.signup___Otp_____resend__String}$seconds',
               textAlign: TextAlign.center,
               style: TextStyle(
               color:Theme.of(context).primaryColor,
               fontWeight: FontWeight.bold,
               fontSize: 15)));
    }),
    SizedBox(
                height: 2.2 * height,
              ),
              buttonWidget(
                  context: context,
                  text: AppStrings.signup___Otp_____complete__String,
                  onPressed: () {
                    // AppNavigation.navigateTo(context, const OtpVerficationView());
                  }),
          ],
        ),
      ),
    );
  }
}
