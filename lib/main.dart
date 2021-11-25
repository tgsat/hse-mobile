import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'app.dart';
import 'di/injection_container.dart' as di;

void main() async {
  // Should call if any init data
  WidgetsFlutterBinding.ensureInitialized();

  // Translate
  await EasyLocalization.ensureInitialized();

  // init dependency injection
  await di.init();

  //runApp(App());
  runApp(
    EasyLocalization(
      path: 'assets/translations',
      supportedLocales: [Locale('en'), Locale('id')],
      fallbackLocale: Locale('id'),
      // assetLoader: CodegenLoader(),
      child: App(),
    ),
  );
}
