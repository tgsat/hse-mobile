import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hse_product/core/presentation/widgets/buttons/button_primary.dart';
import 'package:hse_product/core/presentation/widgets/component/custom_clipper.dart';
import 'package:hse_product/core/presentation/widgets/text_fields/text_field_general.dart';
import 'package:hse_product/core/utils/values/color_config.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/dashboard/presentation/pages/navigation_page.dart';
import 'package:hse_product/features/login/presentation/bloc/login_bloc.dart';
import 'package:hse_product/features/login/presentation/widgets/separator_text.dart';
// import 'linkedin_form.dart';

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
                        SizedBox(
                          height: 40,
                        ),
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
                        SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: Text(Dictionary.quality,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .apply(color: Colors.white)),
                        ),
                        Center(
                          child: Text(
                            Dictionary.pt_nindaya_karya,
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .apply(color: Colors.white),
                          ),
                        ),
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
                height: SizeConfig.maxHeight(context),
                margin: EdgeInsets.symmetric(
                    vertical: SizeConfig.marginActivity,
                    horizontal: SizeConfig.marginActivity),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(Dictionary.log_in,
                            style: Theme.of(context).textTheme.headline6)
                      ],
                    ),
                    TextFeldGeneral(
                      hint: Dictionary.email,
                      label: Dictionary.email,
                      hintStyle: Colors.grey[600],
                      controller: _emailCont,
                      inputType: TextInputType.text,
                      isEnable: true,
                      isValidateEmail: true,
                    ),
                    TextFeldGeneral(
                      hint: Dictionary.password,
                      label: Dictionary.password,
                      hintStyle: Colors.grey[600],
                      controller: _passwordCont,
                      inputType: TextInputType.text,
                      isEnable: true,
                      isValidateEmail: true,
                    ),
                    SizedBox(height: 40),
                    Container(
                      width: double.infinity,
                      child: PrimaryButton(
                        label: Dictionary.login,
                        iColor: Colors.white,
                      ),
                    ),
                    sparatorCenterText(
                        context, Dictionary.atau_masuk_tanpa_identitas),
                    Container(
                      width: double.infinity,
                      child: PrimaryButton(
                        label: Dictionary.anonymous,
                        iColor: Colors.white,
                        backgroundColor: Colors.blueAccent,
                        onPress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NavigationPage()));
                        },
                      ),
                    )
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
