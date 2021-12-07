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
  final _nameCont = new TextEditingController();
  final _emailCont = new TextEditingController();
  final _hpCont = new TextEditingController();
  final _jabatanCont = new TextEditingController();
  final _addressCont = new TextEditingController();

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
                                hintStyle: Colors.grey[600],
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
                                hint: 'userpragma@gmail.com',
                                hintStyle: Colors.grey[600],
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
                                hint: '081123456',
                                hintStyle: Colors.grey[600],
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
                                hint: Dictionary.jl_,
                                hintStyle: Colors.grey[600],
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
                                hint: 'Mobile Developer',
                                hintStyle: Colors.grey[600],
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
