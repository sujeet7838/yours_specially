import 'package:flutter/material.dart';
import 'package:yourspecially/src/constants/app_colors.dart';
import 'package:yourspecially/src/constants/app_theme_text.dart';
import 'package:yourspecially/src/features/contacts/contact_details_screen.dart';
import 'package:yourspecially/src/providers/gift_suggestions.dart';
import 'package:yourspecially/src/routing/app_router.dart';
import 'package:yourspecially/src/routing/routing_config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class YourSpeciallyApp extends StatelessWidget {
  const YourSpeciallyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return ChangeNotifierProvider<GiftSuggestions>(
          create: (BuildContext context) => GiftSuggestions(),
          child: MaterialApp(
            title: 'Your Specially',
            builder: (BuildContext context, Widget? widget) {
              Widget error = const Text('...rendering error...');
              if (widget is Scaffold || widget is Navigator) {
                error = Scaffold(body: Center(child: error)); 
              }
              ErrorWidget.builder = (FlutterErrorDetails errorDetails) => error;
              if (widget != null) return widget;
              throw ('widget is null');
            },
            theme: ThemeData.from(
              colorScheme: ColorScheme.fromSeed(
                seedColor: colorPrimarySeed,
                primary: colorPrimarySeed,
                secondary: colorSecondarySeed,
                brightness: Brightness.light,
              ),
              textTheme: poppinsTextTheme,
              useMaterial3: true,
            ),
            darkTheme: ThemeData.from(
              colorScheme: ColorScheme.fromSeed(
                seedColor: colorPrimarySeed,
                primary: colorPrimarySeed,
                secondary: colorSecondarySeed,
                brightness: Brightness.dark,
              ),
              textTheme: poppinsTextTheme,
              useMaterial3: true,
            ),
            debugShowCheckedModeBanner: false,
            initialRoute: initialScreen,
            onGenerateRoute: generateRoutes,
            routes: <String, Widget Function(BuildContext)>{
              ContactDetailsScreen.routeName: (BuildContext context) =>
                  ContactDetailsScreen(),
            },
          ),
        );
      },
    );
  }
}
