import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hse_product/features/dashboard/presentation/pages/navigation_page.dart';
import 'package:hse_product/features/login/presentation/pages/login_page.dart';
import 'package:hse_product/features/splash/presentation/bloc/splash_bloc.dart';
import 'package:hse_product/features/splash/presentation/widgets/body_splash.dart';
import 'package:hse_product/di/injection_container.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => sl<SplashBloc>()..add(SplashStarted()),
        child: BlocListener<SplashBloc, SplashState>(
          listener: (context, state) {
            if (state is SplashToLogin)
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => LoginPage()),
                  (Route<dynamic> route) => false);
            if (state is SplashToDashboard)
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => NavigationPage()),
                  (Route<dynamic> route) => false);
          },
          child: BodySplash(),
        ),
      ),
    );
  }
}
