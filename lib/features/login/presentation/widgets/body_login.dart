import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hse_product/core/presentation/widgets/buttons/button_login.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/dashboard/presentation/pages/navigation_page.dart';
import 'package:hse_product/features/login/presentation/bloc/login_bloc.dart';
import 'linkedin_form.dart';

class BodyLogin extends StatelessWidget {
  const BodyLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _bloc = BlocProvider.of<LoginBloc>(context);
    return SafeArea(
      child: Container(
        width: SizeConfig.maxWidth(context),
        height: SizeConfig.maxHeight(context),
        margin: EdgeInsets.all(SizeConfig.marginActivity),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/ico_wish.png'),
                SizedBox(height: SizeConfig.marginForm),
                SizedBox(height: 30),
                Text(
                  'Welcome To Waskita Identify Stakeholder',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  'Please Login To Access the Application',
                ),
                SizedBox(height: 30),
                Container(
                  width: SizeConfig.maxWidth(context),
                  child: ButtonLogin(
                    iconAssets: 'assets/images/ico_google.png',
                    label: Dictionary.login_with_google.toUpperCase(),
                    onPress: () {
                      _bloc..add(LoginGoogleStarted());
                    },
                  ),
                ),
                SizedBox(height: SizeConfig.marginForm),
                Container(
                  width: SizeConfig.maxWidth(context),
                  child: ButtonLogin(
                    iconAssets: 'assets/images/ico_fb.png',
                    label: Dictionary.login_with_fb.toUpperCase(),
                    onPress: () {
                      _bloc..add(LoginFacebookStarted());
                    },
                  ),
                ),
                SizedBox(height: SizeConfig.marginForm),
                Container(
                  width: SizeConfig.maxWidth(context),
                  child: ButtonLogin(
                    iconAssets: 'assets/images/ico_linkedin.png',
                    label: Dictionary.login_with_linkedin.toUpperCase(),
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => LinkedinForm(
                            bloc: _bloc,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
