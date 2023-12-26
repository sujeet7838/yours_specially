import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:yourspecially/firebase_options.dart';
import 'package:yourspecially/service_locator.dart';
import 'your_specially_app.dart';

void main() {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      // await Firebase.initializeApp(
      //   options: DefaultFirebaseOptions.currentPlatform,
      // ); 

      await Hive.initFlutter();
      await Hive.openBox('settings');

      registerServiceLocator();

      Logger.root.level = Level.ALL;
      Logger.root.onRecord.listen(
        (LogRecord record) {
          if (record.level.value > 900) {
            if (!kDebugMode) {
              FirebaseCrashlytics.instance
                  .log(
                    '${record.level.name}@${record.loggerName}: ${record.message}',
                  )
                  .then((_) => throw Exception());
            }
          }

          if (kDebugMode) {
            print(
              '${record.level.name}@${record.loggerName}: ${record.time}: ${record.message}',
            );
          }
        },
      );

      FlutterError.onError = (FlutterErrorDetails details) async {
        await FirebaseCrashlytics.instance.recordFlutterFatalError(details);
        // exit(1);
      };

      runApp(
        const ProviderScope(
          child: YourSpeciallyApp(),
        ),
      );
    },
    (Object error, StackTrace stack) async {
      await FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      // exit(1);
    },
  );
}
