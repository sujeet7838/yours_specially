import 'package:flutter/material.dart';
import 'package:get_it_mixin/get_it_mixin.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:yourspecially/src/constants/app_colors.dart';
import 'package:yourspecially/src/features/onboarding/application/onboarding_slide_index_manager.dart';
import 'package:yourspecially/src/features/onboarding/presentation/onboarding_screen/widgets/onboarding_next_button.dart';
import 'package:yourspecially/src/features/onboarding/presentation/onboarding_screen/widgets/onboarding_slide.dart';
import 'package:yourspecially/src/routing/routing_config.dart';
import 'package:yourspecially/src/utils/device_size_config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// class PageViewNotifier extends ChangeNotifier {
//   int currentPageNo = 0;

//   void updateCurrentPageNo(int pageNo) {
//     currentPageNo = pageNo;
//     notifyListeners();
//   }
// }

// final ChangeNotifierProvider<PageViewNotifier> pageViewProvider =
//     ChangeNotifierProvider<PageViewNotifier>(
//   (ChangeNotifierProviderRef<PageViewNotifier> ref) {
//     return PageViewNotifier();
//   },
// );

class OnboardingScreen extends StatelessWidget with GetItMixin {
  OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int currentSlideNo =
        watchX((OnboardingSlideIndexManager x) => x.setOnboardingSlideIndexCmd);
    DeviceSizeConfig deviceSizeConfig = DeviceSizeConfig(context);
    final PageController pageController = PageController(
      initialPage: currentSlideNo,
    );

    Box<dynamic> settingsBox = Hive.box('settings');

    return Material(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              colorBackgroundGradientStart,
              colorBackgroundGradientEnd,
            ],
            tileMode: TileMode.mirror,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: PageView(
                  controller: pageController,
                  onPageChanged: (int value) {
                    // ref
                    //     .read(pageViewProvider.notifier)
                    //     .updateCurrentPageNo(value);
                    get<OnboardingSlideIndexManager>()
                        .setOnboardingSlideIndexCmd
                        .execute(value);
                  },
                  children: <Widget>[
                    OnboardingSlide(
                      deviceSizeConfig: deviceSizeConfig,
                      imageUrl: 'assets/images/onboarding_graphic_01.png',
                      headingText: '1000+ Exiting Gifts',
                      subheadingText:
                          'Explore Cakes, Flowers, Plants, Personalized Gifts, Accessories & More...',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 9.sp,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    OnboardingSlide(
                      deviceSizeConfig: deviceSizeConfig,
                      imageUrl: 'assets/images/onboarding_graphic_02.png',
                     headingText: 'Fabulous Gifts For All',
                      subheadingText:
                          'Explore Cakes, Flowers, Plants, Personalized Gifts, Accessories & More...',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 9.sp,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    OnboardingSlide(
                      deviceSizeConfig: deviceSizeConfig,
                      imageUrl: 'assets/images/question_2.png',
                      headingText: 'Let Get Started',
                      subheadingText:
                          'Explore Cakes, Flowers, Plants, Personalized Gifts, Accessories & More...',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 9.sp,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   width: double.infinity,
              //   height: deviceSizeConfig.blockSizeVertical * 6.0,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: <Widget>[
              //       Container(
              //         height: 8.0,
              //         width: currentSlideNo == 0 ? 25 : 10.0,
              //         margin: const EdgeInsets.all(4.0),
              //         decoration: BoxDecoration(
              //           color: currentSlideNo == 0
              //               ? Colors.white
              //               : const Color(0xffD9D9D9),
              //           borderRadius: currentSlideNo == 0
              //               ? BorderRadius.circular(3.5)
              //               : BorderRadius.circular(50.0),
              //         ),
              //       ),
              //       Container(
              //         height: 8.0,
              //         width: currentSlideNo == 1 ? 25 : 10.0,
              //         margin: const EdgeInsets.all(4.0),
              //         decoration: BoxDecoration(
              //           color: currentSlideNo == 1
              //               ? Colors.white
              //               : const Color(0xffD9D9D9),
              //           borderRadius: currentSlideNo == 1
              //               ? BorderRadius.circular(3.5)
              //               : BorderRadius.circular(50.0),
              //         ),
              //       ),
              //       Container(
              //         height: 8.0,
              //         width: currentSlideNo == 2 ? 25 : 10.0,
              //         margin: const EdgeInsets.all(4.0),
              //         decoration: BoxDecoration(
              //           color: currentSlideNo == 2
              //               ? Colors.white
              //               : const Color(0xffD9D9D9),
              //           borderRadius: currentSlideNo == 2
              //               ? BorderRadius.circular(3.5)
              //               : BorderRadius.circular(50.0),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              Container(
                padding: const EdgeInsets.only(
                  left: 24.0,
                  right: 24.0,
                  top: 0.0,
                  bottom: 5.0,
                ),
                width: double.infinity,
                height: deviceSizeConfig.blockSizeVertical * 15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    OnboardingNextButton(pageController),
                    const SizedBox(
                      height: 0.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        settingsBox.put('returningUser', true);
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          signInScreen,
                          (Route<dynamic> route) => false,
                        );
                      },
                      child: Text(
                        'Skip',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              color: colorPrimarySeed,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
