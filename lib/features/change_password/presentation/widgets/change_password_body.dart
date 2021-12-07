import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/text_fields/text_field_general.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:hse_product/core/utils/values/size_config.dart';

class ChangePasswordBody extends StatefulWidget {
  const ChangePasswordBody({Key? key}) : super(key: key);

  @override
  _ChangePasswordBodyState createState() => _ChangePasswordBodyState();
}

class _ChangePasswordBodyState extends State<ChangePasswordBody> {
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final _oldPassword = TextEditingController(text: '12345678');
  final _newPassword = TextEditingController();
  final _newPasswordConfirm = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: SizeConfig.marginActivity,
          horizontal: SizeConfig.marginActivity),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
          child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFeldGeneral(
                    controller: _oldPassword,
                    hint: Dictionary.password,
                    label: Dictionary.password,
                    isPasswordType: true,
                  ),
                  TextFeldGeneral(
                    controller: _newPassword,
                    hint: '${Dictionary.password}${' Baru'}',
                    label: '${Dictionary.password}${' Baru'}',
                    validatePasswordMatch:
                        _newPasswordConfirm.text != _newPassword.text,
                    isPasswordType: true,
                  ),
                  TextFeldGeneral(
                    controller: _newPasswordConfirm,
                    hint: '${'Konfirmasi'} ${Dictionary.password} ${'Baru'}',
                    label: '${'Konfirmasi'} ${Dictionary.password} ${'Baru'}',
                    isPasswordType: true,
                  ),
                ],
              ))),
    );
  }
}
