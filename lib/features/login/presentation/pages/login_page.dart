import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hse_product/core/presentation/widgets/snack_bars/snack_bar_error.dart';
import 'package:hse_product/features/dashboard/presentation/pages/navigation_page.dart';
import 'package:hse_product/features/login/presentation/bloc/login_bloc.dart';
import 'package:hse_product/features/login/presentation/widgets/body_login.dart';
import 'package:hse_product/injection_container.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => sl<LoginBloc>(),
        child: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state is LoginSuccess)
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => NavigationPage()),
                  (Route<dynamic> route) => false);
            if (state is LoginFailure)
              buildErrorSnackbar(context, state.message);
          },
          child: BodyLogin(),
        ),
      ),
    );
  }
}
