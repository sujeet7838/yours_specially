import 'package:get_it/get_it.dart';
import 'package:yourspecially/src/features/authentication/application/authentication_manager.dart';
import 'package:yourspecially/src/features/authentication/data/authentication_service.dart';
import 'package:yourspecially/src/features/onboarding/application/onboarding_slide_index_manager.dart';

void registerServiceLocator() {
  GetIt.I.registerSingleton<OnboardingSlideIndexManager>(
      OnboardingSlideIndexManager());

  GetIt.I.registerSingleton<AuthenticationService>(AuthenticationService());
  GetIt.I.registerSingleton<AuthenticationManager>(AuthenticationManager());
}
