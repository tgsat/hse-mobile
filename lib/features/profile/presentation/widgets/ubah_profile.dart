import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_white.dart';
import 'package:hse_product/core/presentation/widgets/buttons/button_primary.dart';
import 'package:hse_product/core/presentation/widgets/card/custom_card.dart';
import 'package:hse_product/core/presentation/widgets/text_fields/text_field_general.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/profile/presentation/widgets/item_row_profile.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final _nameCont = new TextEditingController(text: Dictionary.user_pragma);
  final _emailCont = new TextEditingController(text: 'userpragma@gmail.com');
  final _hpCont = new TextEditingController(text: '0811234567');
  final _jabatanCont = new TextEditingController(text: Dictionary.jabatan);
  final _addressCont = new TextEditingController(text: Dictionary.jl_);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarWhite(Dictionary.edit_profile, context),
        body: Container(
          margin: EdgeInsets.symmetric(
              vertical: SizeConfig.marginActivity,
              horizontal: SizeConfig.marginActivity),
          child: SingleChildScrollView(
              child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(height: 5),
                      GestureDetector(
                          // onTap: _getImageFromGallery,
                          child: itemProfile('assets/images/businessman.png')),
                      SizedBox(height: 40),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Dictionary.nama,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          SizedBox(height: 4),
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: CustomCard.cardPrimary(),
                              child: TextFeldGeneral(
                                hint: Dictionary.nama,
                                controller: _nameCont,
                                borderSide: Colors.transparent,
                                inputType: TextInputType.text,
                                isEnable: true,
                                contenPadding:
                                    EdgeInsets.fromLTRB(10, 10, 10, 0),
                              )),
                        ],
                      ),
                      SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Dictionary.email,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          SizedBox(height: 4),
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: CustomCard.cardPrimary(),
                              child: TextFeldGeneral(
                                hint: Dictionary.email,
                                controller: _emailCont,
                                borderSide: Colors.transparent,
                                inputType: TextInputType.text,
                                isEnable: true,
                                contenPadding:
                                    EdgeInsets.fromLTRB(10, 10, 10, 0),
                              )),
                        ],
                      ),
                      SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Dictionary.no_hp,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          SizedBox(height: 4),
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: CustomCard.cardPrimary(),
                              child: TextFeldGeneral(
                                hint: Dictionary.no_hp,
                                controller: _hpCont,
                                borderSide: Colors.transparent,
                                inputType: TextInputType.text,
                                isEnable: true,
                                contenPadding:
                                    EdgeInsets.fromLTRB(10, 10, 10, 0),
                              )),
                        ],
                      ),
                      SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Dictionary.alamat,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          SizedBox(height: 4),
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: CustomCard.cardPrimary(),
                              child: TextFeldGeneral(
                                hint: Dictionary.alamat,
                                controller: _addressCont,
                                borderSide: Colors.transparent,
                                inputType: TextInputType.text,
                                isEnable: true,
                                contenPadding:
                                    EdgeInsets.fromLTRB(10, 10, 10, 0),
                              )),
                        ],
                      ),
                      SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Dictionary.jabatan,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          SizedBox(height: 4),
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: CustomCard.cardPrimary(),
                              child: TextFeldGeneral(
                                hint: Dictionary.jabatan,
                                controller: _jabatanCont,
                                borderSide: Colors.transparent,
                                inputType: TextInputType.text,
                                isEnable: true,
                                contenPadding:
                                    EdgeInsets.fromLTRB(10, 10, 10, 0),
                              )),
                        ],
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: double.infinity,
                        child: PrimaryButton(
                          label: Dictionary.submit,
                          iColor: Colors.white,
                        ),
                      )
                    ],
                  ))),
        ));
  }
}
