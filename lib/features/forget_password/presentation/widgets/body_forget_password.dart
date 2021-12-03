import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/buttons/button_primary.dart';
import 'package:hse_product/core/presentation/widgets/text_fields/text_field_general.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController _emailCont = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: MediaQuery.of(context).padding.bottom,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                LocaleKeys.foget_password.tr(),
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 20),
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
              SizedBox(height: 30),
              PrimaryButton(
                label: LocaleKeys.reset.tr(),
                iColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
