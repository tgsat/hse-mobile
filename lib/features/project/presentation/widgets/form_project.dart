import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';
import 'package:hse_product/core/presentation/blocs/email_bloc/email_bloc.dart';
import 'package:hse_product/core/presentation/blocs/name_bloc/name_bloc.dart';
import 'package:hse_product/core/presentation/widgets/buttons/button_primary.dart';
import 'package:hse_product/core/presentation/widgets/masters/single_attachment.dart';
import 'package:hse_product/core/presentation/widgets/text_fields/text_field_general.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/project/presentation/bloc/project_bloc/project_bloc.dart';

class FormProject extends StatefulWidget {
  const FormProject({Key? key}) : super(key: key);

  @override
  _FormProjectState createState() => _FormProjectState();
}

class _FormProjectState extends State<FormProject> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final _projectNameCont = new TextEditingController();
  final _nameCont = new TextEditingController();
  final _locationCont = new TextEditingController();
  final _hpCont = new TextEditingController();
  final _projectTypeCont = new TextEditingController();
  final _emailCont = new TextEditingController();
  final _otherCont = new TextEditingController();
  final _dateCont = new TextEditingController();

  File? _file;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFeldGeneral(
            label: Dictionary.nama_proyek,
            controller: _projectNameCont,
          ),
          BlocConsumer<NameBloc, NameState>(
            listener: (context, state) {
              if (state is NameSuccess) _nameCont..text = state.name;
            },
            builder: (context, state) {
              return TextFeldGeneral(
                label: Dictionary.nama_pemilik_proyek,
                controller: _nameCont,
              );
            },
          ),
          TextFeldGeneral(
            label: Dictionary.lokasi_proyek_konstruksi,
            controller: _locationCont,
          ),
          TextFeldGeneral(
            label: Dictionary.no_hp_proyek,
            controller: _hpCont,
            inputType: TextInputType.number,
          ),
          TextFeldGeneral(
            label: Dictionary.jenis_proyek_konstruksi,
            controller: _projectTypeCont,
          ),
          BlocConsumer<EmailBloc, EmailState>(
            listener: (context, state) {
              if (state is EmailSuccess) _emailCont..text = state.email;
            },
            builder: (context, state) {
              return TextFeldGeneral(
                label: Dictionary.alamat_email_pemilik,
                controller: _emailCont,
                inputType: TextInputType.emailAddress,
                isValidateEmail: true,
              );
            },
          ),
          InkWell(
            child: TextFeldGeneral(
              label: Dictionary.perkiraan_waktu_lelang,
              controller: _dateCont,
              isEnable: false,
            ),
            onTap: () {
              showMonthPicker(
                context: context,
                firstDate: DateTime.now(),
                lastDate: DateTime(DateTime.now().year + 10, 9),
                initialDate: DateTime.now(),
              ).then((date) {
                if (date != null) {
                  setState(() {
                    _dateCont.text = DateFormat('MM-yyyy').format(date);
                  });
                }
              });
            },
          ),
          TextFeldGeneral(
            label: Dictionary.info_lainnya,
            controller: _otherCont,
            isRequired: false,
          ),
          SingleAttachments(
            onSuccess: (File fileUploaded) {
              _file = fileUploaded;
            },
          ),
          SizedBox(height: SizeConfig.marginActivity),
          Container(
            width: SizeConfig.maxWidth(context),
            child: PrimaryButton(
              label: Dictionary.submit,
              onPress: () {
                if (_formKey.currentState!.validate() && _file != null) {
                  BlocProvider.of<ProjectBloc>(context).add(ProjectStarted(
                    projectName: _projectNameCont.text,
                    location: _locationCont.text,
                    projectType: _projectTypeCont.text,
                    date: _dateCont.text,
                    name: _nameCont.text,
                    hp: _hpCont.text,
                    email: _emailCont.text,
                    other: _otherCont.text,
                    file: _file!,
                  ));
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
