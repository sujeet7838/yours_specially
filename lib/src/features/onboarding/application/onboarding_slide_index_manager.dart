import 'package:flutter_command/flutter_command.dart';

class OnboardingSlideIndexManager {
  late Command<int, int> setOnboardingSlideIndexCmd;

  OnboardingSlideIndexManager() {
    setOnboardingSlideIndexCmd = Command.createSync((int index) => index, 0);
  }
}
