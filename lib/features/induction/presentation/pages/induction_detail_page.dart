import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_white.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/audit/presentation/widgets/item_data_audit.dart';
import 'package:hse_product/features/induction/presentation/widgets/approval_fab.dart';
import 'package:hse_product/features/induction/presentation/widgets/induction_detail_body.dart';
import 'package:hse_product/features/inspection/presentation/widgets/item_two_column.dart';
import 'package:easy_localization/easy_localization.dart';

class InductionDetailPage extends StatefulWidget {
  const InductionDetailPage({Key? key}) : super(key: key);

  @override
  _InductionDetailPageState createState() => _InductionDetailPageState();
}

class _InductionDetailPageState extends State<InductionDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWhite(LocaleKeys.induction.tr(), context),
      body: InductionDetailBody(),
      floatingActionButton: ApprovalButton(),
    );
  }
}
