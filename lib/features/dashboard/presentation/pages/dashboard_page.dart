import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/home_app_bar.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:hse_product/features/dashboard/presentation/widgets/menu_card_dashboard.dart';

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
      body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisCount: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          children: <Widget>[
            MenuCardDashboard(
              title: LocaleKeys.hse_plan,
              assets: 'assets/images/planner.png',
            ),
          ]),
    );
  }
}
