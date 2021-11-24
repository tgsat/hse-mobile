import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hse_product/core/presentation/blocs/single_attachment_bloc/single_attachment_bloc.dart';
import 'package:hse_product/core/presentation/widgets/shimmers/shimmer_card.dart';
import 'package:hse_product/core/presentation/widgets/text_fields/text_field_general.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:hse_product/core/utils/values/size_config.dart';

class SingleAttachments extends StatefulWidget {
  final Function(File fileUploaded)? onSuccess;

  const SingleAttachments({Key? key, this.onSuccess}) : super(key: key);

  @override
  _SingleAttachmentsState createState() => _SingleAttachmentsState();
}

class _SingleAttachmentsState extends State<SingleAttachments> {
  final _cont = new TextEditingController();
  @override
  void initState() {
    _cont.clear();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SingleAttachmentBloc, SingleAttachmentState>(
      listener: (context, state) {
        if (state is SingleAttachmentSuccess) {
          if (widget.onSuccess != null) widget.onSuccess!(state.fileUpload);
          _cont.text = state.fileUpload.path;
        }
      },
      builder: (context, state) {
        if (state is SingleAttachmentInProgress)
          return ShimmerCard();
        else if (state is SingleAttachmentSuccess)
          return InkWell(
            child: TextFeldGeneral(
              controller: _cont,
              label: Dictionary.upload_bukti_evidence,
              isEnable: false,
              sufix: Icon(
                Icons.attach_file,
                color: Colors.grey,
              ),
            ),
            onTap: () => BlocProvider.of<SingleAttachmentBloc>(context)
              ..add(SingleAttachmentStarted()),
          );
        return InkWell(
          child: TextFeldGeneral(
            controller: _cont,
            label: Dictionary.upload_bukti_evidence,
            isEnable: false,
            sufix: Icon(
              Icons.attach_file,
              color: Colors.grey,
            ),
          ),
          onTap: () => BlocProvider.of<SingleAttachmentBloc>(context)
            ..add(SingleAttachmentStarted()),
        );
      },
    );
  }

  // _buildField({String? hint}) => Container(
  //       width: double.infinity,
  //       margin: EdgeInsets.symmetric(vertical: SizeConfig.marginForm),
  //       padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
  //       decoration: BoxDecoration(
  //         border: Border.all(width: 1, color: Colors.grey),
  //         borderRadius: BorderRadius.circular(8),
  //       ),
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
  //           Expanded(
  //             child: Text(
  //               hint ?? Dictionary.upload_bukti_evidence,
  //               overflow: TextOverflow.ellipsis,
  //               style: TextStyle(color: Colors.grey, fontSize: 15),
  //             ),
  //           ),
  //           Icon(
  //             Icons.attach_file,
  //             color: Colors.grey,
  //           ),
  //         ],
  //       ),
  //     );
}
