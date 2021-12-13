import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/card/custom_card.dart';
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
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Dictionary.password,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(height: 4),
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 2),
                          decoration: CustomCard.cardPrimary(),
                          child: TextFeldGeneral(
                            hint: Dictionary.password,
                            isPasswordType: true,
                            controller: _oldPassword,
                            borderSide: Colors.transparent,
                            inputType: TextInputType.text,
                            isEnable: true,
                            contenPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          )),
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${Dictionary.password}${' Baru'}',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(height: 4),
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 2),
                          decoration: CustomCard.cardPrimary(),
                          child: TextFeldGeneral(
                            hint: '${Dictionary.password}${' Baru'}',
                            controller: _newPassword,
                            borderSide: Colors.transparent,
                            inputType: TextInputType.text,
                            isEnable: true,
                            isPasswordType: true,
                            contenPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          )),
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${'Konfirmasi'} ${Dictionary.password} ${'Baru'}',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(height: 4),
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 2),
                          decoration: CustomCard.cardPrimary(),
                          child: TextFeldGeneral(
                            hint:
                                '${'Konfirmasi'} ${Dictionary.password} ${'Baru'}',
                            controller: _newPasswordConfirm,
                            borderSide: Colors.transparent,
                            inputType: TextInputType.text,
                            isEnable: true,
                            isPasswordType: true,
                            contenPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          )),
                    ],
                  ),
                ],
              ))),
    );
  }
}
