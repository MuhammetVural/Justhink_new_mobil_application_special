import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:justhink_new_mobil_application_purple/app/app.dart';
import 'package:justhink_new_mobil_application_purple/core/navigator/app_router.dart';
import 'package:justhink_new_mobil_application_purple/presentation/resources/assets_manager.dart';
import 'package:justhink_new_mobil_application_purple/presentation/resources/color_manager.dart';
import 'package:justhink_new_mobil_application_purple/presentation/resources/font_manager.dart';
import 'package:justhink_new_mobil_application_purple/presentation/resources/string_manager.dart';
import 'package:justhink_new_mobil_application_purple/presentation/resources/values_manager.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@RoutePage()
class OnboardingView extends StatefulWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {


  late final List<SliderObject> _list = _getSliderData();
  final PageController _pageController = PageController(initialPage: 0);
  bool currentIndex = false;


  List<SliderObject> _getSliderData() =>
      [
        SliderObject(ImageAssets.justhinkLogo, AppStrings.onboardingSubTitle1,
            AppStrings.onboardingTitle1),
        SliderObject(ImageAssets.justhinkLogo, AppStrings.onboardingSubTitle2,
            AppStrings.onboardingTitle2),
        SliderObject(ImageAssets.justhinkLogo, AppStrings.onboardingSubTitle3,
            AppStrings.onboardingTitle3),
        SliderObject(ImageAssets.justhinkLogo, AppStrings.onboardingSubTitle4,
            AppStrings.onboardingTitle4),
      ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      backgroundColor: ColorManager.primary,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: [
              OnboardingPage(),
              OnboardingPage2(),
              OnboardingPage3(),
            ],
            onPageChanged: (value) {
              setState(() {
                currentIndex = (value == 2);
              });
            },
          ),
          Container(
            alignment: const Alignment(0, 0.7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //skip
                currentIndex==false?
                GestureDetector(
                  onTap: () {
                    _pageController.jumpToPage(3);
                  },
                  child: const Text('Skip',
                    style: TextStyle(fontWeight: FontWeightManager.semiBold , color: Colors.white),
                  ),
                )
                :
                const Text('        '),
                //dot indicator
                SmoothPageIndicator(
                  controller: _pageController,
                  count: 3,
                ),
                //next or done
                currentIndex
                    ? GestureDetector(
                  onTap: () {
                    router.push(const MainRoute());
                  },
                  child: Text('Done',
                    style: TextStyle(fontWeight: FontWeightManager.semiBold, color: Colors.white),
                  ),
                )
                    : GestureDetector(
                  onTap: () {
                    _pageController.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  child: Text('Next',
                    style: TextStyle(fontWeight: FontWeightManager.semiBold , color: Colors.white),
                  ),
                ),

              ],
            ),)
        ],

      ),


    );
  }
}

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen,
      child: Column(children: [
        const SizedBox(height: AppSize.s40,),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text('o1', textAlign: TextAlign.center, style: Theme
              .of(context)
              .textTheme
              .headlineSmall,),
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text('Os1', textAlign: TextAlign.center, style: Theme
              .of(context)
              .textTheme
              .titleMedium,),
        ),
        const SizedBox(height: AppSize.s60,),
        Image.asset(ImageAssets.justhinkLogo),
      ],),
    );
  }
}

class OnboardingPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pinkAccent,
      child: Column(children: [
        const SizedBox(height: AppSize.s40,),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text('o2', textAlign: TextAlign.center, style: Theme
              .of(context)
              .textTheme
              .headlineSmall,),
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text('Os2', textAlign: TextAlign.center, style: Theme
              .of(context)
              .textTheme
              .titleMedium,),
        ),
        const SizedBox(height: AppSize.s60,),
        Image.asset(ImageAssets.justhinkLogo),
      ],),
    );
  }
}


class OnboardingPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      child: Column(children: [
        const SizedBox(height: AppSize.s40,),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text('o3', textAlign: TextAlign.center, style: Theme
              .of(context)
              .textTheme
              .headlineSmall,),
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text('Os3', textAlign: TextAlign.center, style: Theme
              .of(context)
              .textTheme
              .titleMedium,),
        ),
        const SizedBox(height: AppSize.s60,),
        Image.asset(ImageAssets.justhinkLogo),
      ],),
    );
  }
}

class SliderObject {
  String image;
  String title;
  String subTitle;

  SliderObject(this.image, this.subTitle, this.title);

}