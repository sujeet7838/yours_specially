import 'package:flutter/material.dart';
import 'package:get_it_mixin/get_it_mixin.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:yourspecially/src/features/onboarding/application/onboarding_slide_index_manager.dart';
import 'package:yourspecially/src/routing/routing_config.dart';

class OnboardingNextButton extends StatelessWidget with GetItMixin {
  OnboardingNextButton(
    this.pageController, {
    Key? key,
  }) : super(key: key);

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    int currentSlideNo =
        watchX((OnboardingSlideIndexManager x) => x.setOnboardingSlideIndexCmd);

    Box<dynamic> settingsBox = Hive.box('settings');

    return ElevatedButton(
      onPressed: () {
        int updatedPageNo = currentSlideNo == 2 ? 2 : currentSlideNo + 1;

        if (currentSlideNo == 2) {
          settingsBox.put('returningUser', true);
          Navigator.pushNamedAndRemoveUntil(
            context,
            signInScreen,
            (Route<dynamic> route) => false,
          );
        }

        get<OnboardingSlideIndexManager>()
            .setOnboardingSlideIndexCmd
            .execute(updatedPageNo);
        pageController.animateToPage(
          updatedPageNo,
          duration: const Duration(milliseconds: 500),
          curve: Curves.ease,
        );
      },
      style: ElevatedButton.styleFrom(
        // foregroundColor:
        //     currentSlideNo == 2 ? Colors.white : const Color(0xff747474),
        // backgroundColor:
        //     currentSlideNo == 2 ? const Color(0xffFFB93E) : Colors.white,
        minimumSize: const Size(
          double.infinity,
          55.0,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        elevation: 0.0,
        textStyle: Theme.of(context).textTheme.button?.copyWith(
              fontSize: 15.0,
            ),
      ),
      child:
          currentSlideNo == 2 ? const Text('GET STARTED') : const Text('NEXT'),
    );
  }
}
