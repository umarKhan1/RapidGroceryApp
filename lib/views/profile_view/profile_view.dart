part of 'profile_imports.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 100;
    var width = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      body: Column(
        children: [
          Card(
            elevation: 2,
            child: Container(
              height: 32.3 * height,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(children: [
                    Container(
                      height: 16.8 * height,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withOpacity(0.3)),
                    ),
                    Positioned(
                        top: 12.6 * height,
                        left: 58.3 * width,
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              shape: BoxShape.circle),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        )),
                  ]),
                  const SizedBox(
                    height: 10,
                  ),
                  TextWidget(
                      AppStrings.profile__User___name,
                      false,
                      FontWeight.w600,
                      1.2,
                      Theme.of(context).textTheme.headline1!.color!,
                      TextAlign.center),
                  const SizedBox(
                    height: 10,
                  ),
                  TextWidget(
                      AppStrings.profile__User___email,
                      false,
                      FontWeight.w500,
                      1,
                      Theme.of(context).textTheme.headline1!.color!,
                      TextAlign.center),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 2.8 * height,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 11.0,),
            child: SizedBox(
              child: Card(
                elevation: 1,
                
                child: Column(children: [
                  profileListTileWidget(
                      assetPAth: AppImagesPaths.bottom____search___Image,
                      name: AppStrings.profile__User___account__information,
                      context: context,
                      colorandIconShow: false),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,),
                      child: Divider(
                        thickness: 1,

                        color: Colors.grey.withOpacity(0.3),
                      )),
                  profileListTileWidget(
                      assetPAth: AppImagesPaths.profile___delivery_order__,
                      name: AppStrings.profile__User___account__My_order,
                      context: context, 
                      colorandIconShow: false),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey.withOpacity(0.3),
                      )),
                  profileListTileWidget(
                      assetPAth: AppImagesPaths.profile___delivery___headphone,
                      name: AppStrings.profile__User___account__help__center,
                      context: context, 
                      colorandIconShow: false),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey.withOpacity(0.3),
                      )),
                  profileListTileWidget(
                      assetPAth: AppImagesPaths.profile___delivery_about__us_,
                      name: AppStrings.profile__User___account__about__us,
                      context: context, 
                      colorandIconShow: false),
                          Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey.withOpacity(0.3),
                      )),
                     profileListTileWidget(
                      assetPAth: AppImagesPaths.profile___delivery_log_out_,
                      name: AppStrings.profile__User__logout,
                      context: context, 
                      colorandIconShow: true),
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
