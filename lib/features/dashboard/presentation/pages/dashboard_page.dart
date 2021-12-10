import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/home_app_bar.dart';
import 'package:hse_product/features/audit/presentation/pages/audit_page.dart';
import 'package:hse_product/features/comunication/presentation/pages/comunication_page.dart';
import 'package:hse_product/features/document_qhse/presentation/pages/document_qhse_page.dart';
import 'package:hse_product/features/emergency_response/presentation/pages/emergency_response_page.dart';
import 'package:hse_product/features/fresh_eye/presentation/pages/fresh_eye_page.dart';
import 'package:hse_product/features/hazard/presentation/pages/hazard_page.dart';
import 'package:hse_product/features/hse_plan/presentation/pages/hse_plan_page.dart';
import 'package:hse_product/features/dashboard/presentation/widgets/menu_card_dashboard.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hse_product/features/incident/presentation/pages/incident_page.dart';
import 'package:hse_product/features/induction/presentation/pages/induction_page.dart';
import 'package:hse_product/features/inspection/presentation/pages/inspection_page.dart';
import 'package:hse_product/features/menu_meeting/presentation/pages/meeting_page.dart';
import 'package:hse_product/features/near_miss/presentation/pages/near_miss_page.dart';
import 'package:hse_product/features/risk_asessment/presentation/pages/risk_asessment_page.dart';
import 'package:hse_product/features/toolbox_talk/presentation/pages/toolbox_talk.dart';
import 'package:hse_product/features/training/presentation/pages/training_page.dart';
import 'package:hse_product/features/work_permit/presentation/pages/work_permit_page.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

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
                pushNewScreen(context,
                    screen: HSEPlanPage(),
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.fade);
              },
              title: LocaleKeys.hse_plan.tr(),
              assets: "assets/images/planner.png",
              withAsset: MediaQuery.of(context).size.width * 0.075,
            ),
            MenuCardDashboard(
              press: () {
                pushNewScreen(context,
                    screen: DocumentQHSEPage(),
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.fade);
              },
              title: LocaleKeys.dokument_qhse.tr(),
              assets: "assets/images/documents.png",
              withAsset: MediaQuery.of(context).size.width * 0.075,
            ),
            MenuCardDashboard(
              press: () {
                pushNewScreen(context,
                    screen: ComunicationPage(),
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.fade);
              },
              title: LocaleKeys.communication.tr(),
              assets: "assets/images/comunication.png",
              withAsset: MediaQuery.of(context).size.width * 0.075,
            ),
            MenuCardDashboard(
              press: () {
                pushNewScreen(context,
                    screen: InspectionPage(),
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.fade);
              },
              title: LocaleKeys.inspection.tr(),
              assets: "assets/images/inspection.png",
              withAsset: MediaQuery.of(context).size.width * 0.075,
            ),
            MenuCardDashboard(
              press: () {
                pushNewScreen(context,
                    screen: AuditPage(),
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.fade);
              },
              title: LocaleKeys.audit.tr(),
              assets: "assets/images/audit.png",
              withAsset: MediaQuery.of(context).size.width * 0.075,
            ),
            MenuCardDashboard(
              press: () {
                pushNewScreen(context,
                    screen: RiskAsessmentPage(),
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.fade);
              },
              title: LocaleKeys.risk_asessment.tr(),
              assets: "assets/images/risk_asessment.png",
              withAsset: MediaQuery.of(context).size.width * 0.075,
            ),
            MenuCardDashboard(
              press: () {
                pushNewScreen(context,
                    screen: IncidentPage(),
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.fade);
              },
              title: LocaleKeys.incident.tr(),
              assets: "assets/images/incident.png",
              withAsset: MediaQuery.of(context).size.width * 0.075,
            ),
            MenuCardDashboard(
              press: () {
                pushNewScreen(context,
                    screen: NearMissPage(),
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.fade);
              },
              title: LocaleKeys.near_miss.tr(),
              assets: "assets/images/near_miss.png",
              withAsset: MediaQuery.of(context).size.width * 0.075,
            ),
            MenuCardDashboard(
              press: () {
                pushNewScreen(context,
                    screen: HazardPage(),
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.fade);
              },
              title: LocaleKeys.hazard.tr(),
              assets: "assets/images/hazard.png",
              withAsset: MediaQuery.of(context).size.width * 0.075,
            ),
            MenuCardDashboard(
              press: () {
                pushNewScreen(context,
                    screen: InductionPage(),
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.fade);
              },
              title: LocaleKeys.induction.tr(),
              assets: "assets/images/induction.png",
              withAsset: MediaQuery.of(context).size.width * 0.075,
            ),
            MenuCardDashboard(
              press: () {
                pushNewScreen(context,
                    screen: FreshEyePage(),
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.fade);
              },
              title: LocaleKeys.fresh_eye.tr(),
              assets: "assets/images/fresh_eye.png",
              withAsset: MediaQuery.of(context).size.width * 0.075,
            ),
            MenuCardDashboard(
              press: () {
                pushNewScreen(context,
                    screen: Trainingpage(),
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.fade);
              },
              title: LocaleKeys.training.tr(),
              assets: "assets/images/training.png",
              withAsset: MediaQuery.of(context).size.width * 0.075,
            ),
            MenuCardDashboard(
              press: () {
                pushNewScreen(context,
                    screen: WorkPermitPage(),
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.fade);
              },
              title: LocaleKeys.work_permit.tr(),
              assets: "assets/images/work_permit.png",
              withAsset: MediaQuery.of(context).size.width * 0.075,
            ),
            MenuCardDashboard(
              press: () {
                pushNewScreen(context,
                    screen: MenuMeetingPage(),
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.fade);
              },
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
            MenuCardDashboard(
              press: () {
                pushNewScreen(context,
                    screen: EmergencyResponsePage(),
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.fade);
              },
              title: LocaleKeys.emergency_response.tr(),
              assets: "assets/images/emergency_response.png",
              withAsset: MediaQuery.of(context).size.width * 0.075,
            ),
            MenuCardDashboard(
              press: () {
                pushNewScreen(context,
                    screen: ToolboxTalkPage(),
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.fade);
              },
              title: LocaleKeys.toolbox_talk.tr(),
              assets: "assets/images/toolbox_talks.png",
              withAsset: MediaQuery.of(context).size.width * 0.075,
            ),
          ]),
    );
  }
}
