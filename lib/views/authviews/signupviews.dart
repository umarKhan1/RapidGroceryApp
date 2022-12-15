// ignore_for_file: unused_local_variable
part of 'authimports.dart';

// ignore: must_be_immutable
class SignupView extends StatefulWidget {
  const SignupView({super.key});
  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  TextEditingController fullnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    String countryCode = "";
    double height = MediaQuery.of(context).size.height / 100;
        double width = MediaQuery.of(context).size.width / 100;
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
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 20),
        child: ListView(
            children: [
              Center(
                  child: TextWidget(
                      AppStrings.loginview________signup__String,
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
                      AppStrings.loginview________signup__text_____String,
                      false,
                      FontWeight.w500,
                      1.1,
                      Theme.of(context).textTheme.headline2!.color!,
                      TextAlign.center)),
              SizedBox(
                height: 4.2 * height,
              ),
              TextFieldWidget(
                "Full Name",
                "",
                "",
                controller: fullnameController,
              ),
              SizedBox(
                height: 2.2 * height,
              ),
              TextFieldWidget(
                "Email",
                "",
                "",
                controller: emailController,
              ),
              SizedBox(
                height: 2.2 * height,
              ),
              TextFieldWidget(
                "Password",
                "",
                "",
                controller: passwordController,
              ),
              SizedBox(
                height: 2.2 * height,
              ),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 0.6, color: Colors.grey)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 26 * width,
                        child: CountryPickerDropdown(
                          isExpanded: true,
                          isDense: true,
                          underline: Container(),
                          icon: const SizedBox.shrink(),
                          initialValue: 'ae',
                          itemBuilder: ((country) => SizedBox(
                                child: Row(
                                  children: <Widget>[
                                    CountryPickerUtils.getDefaultFlagImage(
                                      country,
                                    ),
                                    const SizedBox(
                                      width: 8.0,
                                    ),
                                    Text("+${country.phoneCode})"),
                                  ],
                                ),
                              )),
                          onValuePicked: (Country value) {},
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      VerticalDivider(
                        color: Theme.of(context).textTheme.headline2!.color!,
                        width: 1,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                        width: 41 * width,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                          
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            disabledBorder: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                  color: Theme.of(context)
                                      .inputDecorationTheme
                                      .disabledBorder!
                                      .borderSide
                                      .color),
                            ),
                            hintText: "(000)000000",
                            contentPadding: const  EdgeInsets.symmetric(vertical: 14),
                            hintStyle: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 5.2 * height,
              ),
              buttonWidget(
                  context: context,
                  text: AppStrings.loginview________signup__String,
                  onPressed: () {
                    AppNavigation.navigateTo(context, const OtpVerficationView());
                  }),
                SizedBox(
                height: 15.2 * height,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidget(
                      AppStrings.signup___End________text__String,
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
                      AppNavigation.navigateReplacement(context,  LoginView());
                    },
                    child: TextWidget(
                        AppStrings.login_____SignIn__Text,
                        false,
                        FontWeight.w700,
                        1.1,
                        Theme.of(context).primaryColor,
                        TextAlign.center),
                  )
                ],
              )
            ]),
      ),
    );
  }
}
