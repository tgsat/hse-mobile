import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/home_app_bar.dart';
import 'package:hse_product/features/audit/presentation/pages/audit_page.dart';
import 'package:hse_product/features/comunication/presentation/pages/comunication_page.dart';
import 'package:hse_product/features/document_qhse/presentation/pages/document_qhse_page.dart';
import 'package:hse_product/features/hse_plan/presentation/pages/hse_plan_page.dart';
import 'package:hse_product/features/dashboard/presentation/widgets/menu_card_dashboard.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hse_product/features/incident/presentation/pages/incident_page.dart';
import 'package:hse_product/features/induction/presentation/pages/induction_page.dart';
import 'package:hse_product/features/inspection/presentation/pages/inspection_page.dart';
import 'package:hse_product/features/near_miss/presentation/pages/near_miss_page.dart';
import 'package:hse_product/features/risk_asessment/presentation/pages/risk_asessment_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: GridView(
          shrinkWrap: true,
          primary: false,
          padding: const EdgeInsets.all(20),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          children: <Widget>[
            MenuCardDashboard(
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HSEPlanPage()));
              },
              title: LocaleKeys.hse_plan.tr(),
              assets: "assets/images/planner.png",
              withAsset: MediaQuery.of(context).size.width * 0.075,
            ),
            MenuCardDashboard(
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DocumentQHSEPage()));
              },
              title: LocaleKeys.dokument_qhse.tr(),
              assets: "assets/images/documents.png",
              withAsset: MediaQuery.of(context).size.width * 0.075,
            ),
            MenuCardDashboard(
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ComunicationPage()));
              },
              title: LocaleKeys.communication.tr(),
              assets: "assets/images/comunication.png",
              withAsset: MediaQuery.of(context).size.width * 0.075,
            ),
            MenuCardDashboard(
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InspectionPage()));
              },
              title: LocaleKeys.inspection.tr(),
              assets: "assets/images/inspection.png",
              withAsset: MediaQuery.of(context).size.width * 0.075,
            ),
            MenuCardDashboard(
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AuditPage()));
              },
              title: LocaleKeys.audit.tr(),
              assets: "assets/images/audit.png",
              withAsset: MediaQuery.of(context).size.width * 0.075,
            ),
            MenuCardDashboard(
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RiskAsessmentPage()));
              },
              title: LocaleKeys.risk_asessment.tr(),
              assets: "assets/images/risk_asessment.png",
              withAsset: MediaQuery.of(context).size.width * 0.075,
            ),
            MenuCardDashboard(
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => IncidentPage()));
              },
              title: LocaleKeys.incident.tr(),
              assets: "assets/images/incident.png",
              withAsset: MediaQuery.of(context).size.width * 0.075,
            ),
            MenuCardDashboard(
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NearMissPage()));
              },
              title: LocaleKeys.near_miss.tr(),
              assets: "assets/images/near_miss.png",
              withAsset: MediaQuery.of(context).size.width * 0.075,
            ),
            MenuCardDashboard(
              press: () {},
              title: LocaleKeys.hazard.tr(),
              assets: "assets/images/hazard.png",
              withAsset: MediaQuery.of(context).size.width * 0.075,
            ),
            MenuCardDashboard(
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InductionPage()));
              },
              title: LocaleKeys.induction.tr(),
              assets: "assets/images/induction.png",
              withAsset: MediaQuery.of(context).size.width * 0.075,
            ),
            MenuCardDashboard(
              press: () {},
              title: LocaleKeys.fresh_eye.tr(),
              assets: "assets/images/fresh_eye.png",
              withAsset: MediaQuery.of(context).size.width * 0.075,
            ),
            MenuCardDashboard(
              press: () {},
              title: LocaleKeys.training.tr(),
              assets: "assets/images/training.png",
              withAsset: MediaQuery.of(context).size.width * 0.075,
            ),
            MenuCardDashboard(
              press: () {},
              title: LocaleKeys.work_permit.tr(),
              assets: "assets/images/work_permit.png",
              withAsset: MediaQuery.of(context).size.width * 0.075,
            ),
            MenuCardDashboard(
              press: () {},
              title: LocaleKeys.meeting.tr(),
              assets: "assets/images/meeting.png",
              withAsset: MediaQuery.of(context).size.width * 0.075,
            ),
            MenuCardDashboard(
              press: () {},
              title: LocaleKeys.statistics.tr(),
              assets: "assets/images/statistics.png",
              withAsset: MediaQuery.of(context).size.width * 0.075,
            ),
          ]),
    );
  }
}
