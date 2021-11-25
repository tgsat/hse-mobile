import 'package:flutter/material.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:hse_product/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:hse_product/features/meeting/presentation/pages/meeting_page.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:hse_product/core/utils/values/color_config.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:hse_product/features/profile/presentation/pages/profile_page.dart';
import 'package:easy_localization/easy_localization.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      DashboardPage(),
      MeetingPage(),
      ProfilePage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.domain),
        title: (Dictionary.stakeholder),
        activeColorPrimary: ColorConfig.primaryColor,
        inactiveColorPrimary: ColorConfig.disableColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.calendar_today),
        title: (LocaleKeys.meeting.tr()),
        activeColorPrimary: ColorConfig.primaryColor,
        inactiveColorPrimary: ColorConfig.disableColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person),
        title: (Dictionary.profile),
        activeColorPrimary: ColorConfig.primaryColor,
        inactiveColorPrimary: ColorConfig.disableColor,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style1, // Choose the nav bar style with this property.
    );
  }
}
