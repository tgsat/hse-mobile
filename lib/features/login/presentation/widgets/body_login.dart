import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hse_product/core/presentation/widgets/buttons/button_primary.dart';
import 'package:hse_product/core/presentation/widgets/component/custom_clipper.dart';
import 'package:hse_product/core/presentation/widgets/text_fields/text_field_general.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hse_product/core/utils/values/color_config.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/dashboard/presentation/pages/navigation_page.dart';
import 'package:hse_product/features/forget_password/presentation/pages/forget_password.dart';
import 'package:hse_product/features/login/presentation/bloc/login_bloc.dart';

class BodyLogin extends StatefulWidget {
  const BodyLogin({Key? key}) : super(key: key);

  @override
  _BodyLoginState createState() => _BodyLoginState();
}

class _BodyLoginState extends State<BodyLogin> {
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final _emailCont = new TextEditingController();
  final _passwordCont = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _bloc = BlocProvider.of<LoginBloc>(context);
    return SafeArea(
      child: SingleChildScrollView(
          child: Form(
        key: _formKey,
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                ClipPath(
                  clipper: WaveClipper2(),
                  child: Container(
                    child: Column(),
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0x22ff3a5a), Color(0xddd6f3)])),
                  ),
                ),
                ClipPath(
                  clipper: WaveClipper3(),
                  child: Container(
                    child: Column(),
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0x44ff3a5a), Color(0x44fe494d)])),
                  ),
                ),
                ClipPath(
                  clipper: WaveClipper1(),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 40),
                        Material(
                            elevation: 8.0,
                            shape: CircleBorder(),
                            child: CircleAvatar(
                              backgroundColor: Colors.grey[100],
                              child: Container(
                                  padding: EdgeInsets.all(20),
                                  child: buildLogo()),
                              radius: 50.0,
                            )),
                        SizedBox(height: 15),
                        Center(
                          child: Text(
                            Dictionary.pt_nindaya_karya,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .apply(color: Colors.white),
                          ),
                        ),
                        SizedBox(height: 4),
                        Center(
                          child: Text(
                              LocaleKeys
                                  .quality_health_safety_environment_system
                                  .tr(),
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .apply(color: Colors.white),
                              textAlign: TextAlign.center),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [ColorConfig.primaryColor, Colors.orange])),
                  ),
                ),
              ],
            ),
            Container(
                width: SizeConfig.maxWidth(context),
                margin: EdgeInsets.symmetric(
                    vertical: SizeConfig.marginActivity,
                    horizontal: SizeConfig.marginActivity),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(LocaleKeys.login.tr(),
                            style: Theme.of(context).textTheme.headline6)
                      ],
                    ),
                    TextFeldGeneral(
                      prefixIcon: Icon(Icons.person),
                      hint: Dictionary.email,
                      label: Dictionary.email,
                      hintStyle: Colors.grey[600],
                      controller: _emailCont,
                      inputType: TextInputType.emailAddress,
                      isEnable: true,
                      isValidateEmail: true,
                    ),
                    TextFeldGeneral(
                      prefixIcon: Icon(Icons.lock),
                      hint: Dictionary.password,
                      label: Dictionary.password,
                      hintStyle: Colors.grey[600],
                      controller: _passwordCont,
                      inputType: TextInputType.text,
                      isEnable: true,
                      isPasswordType: true,
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: double.infinity,
                      child: PrimaryButton(
                        label: LocaleKeys.login.tr(),
                        iColor: Colors.white,
                        onPress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NavigationPage()));
                        },
                      ),
                    ),
                    SizedBox(height: 18),
                    InkWell(
                      child: Text((LocaleKeys.foget_password.tr()),
                          style: Theme.of(context).textTheme.bodyText2),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgetPassword()));
                      },
                    ),
                  ],
                )),
          ],
        ),
      )),
    );
  }

  Hero buildLogo() {
    return new Hero(
        tag: "Logo",
        child: Container(
            child: new Image.asset(
          'assets/images/logo_qhse.png',
        )));
  }
}
