import 'package:flutter/material.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:hse_product/features/login/presentation/pages/login_page.dart';
import 'package:hse_product/features/splash/presentation/pages/splash_page.dart';
import 'core/utils/helpers/navigation_service.dart';
import 'core/utils/values/theme_config.dart';
import 'di/injection_container.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Dictionary.app_name,
      debugShowCheckedModeBanner: false,
      theme: ThemeConfig.primaryTheme,
      home: SplashPage(),
      navigatorKey: sl<NavigationService>().navigatorKey,
      onGenerateRoute: (routeSettings) {
        switch (routeSettings.name) {
          case '/LOGIN':
            return MaterialPageRoute(
              builder: (context) => LoginPage(),
            );
        }
      },
    );
  }
}
