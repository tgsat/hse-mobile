import 'package:flutter/material.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:easy_localization/easy_localization.dart';

class BodySplash extends StatefulWidget {
  const BodySplash({Key? key}) : super(key: key);

  @override
  _BodySplashState createState() => _BodySplashState();
}

class _BodySplashState extends State<BodySplash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            color: Colors.white,
            // decoration: BoxDecoration(
            //     gradient: LinearGradient(
            //         colors: [ColorConfig.primaryColor, Colors.orange])),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Material(
                    elevation: 0.0,
                    shape: CircleBorder(),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Container(
                          padding: EdgeInsets.all(20), child: buildLogo()),
                      radius: 90,
                    )),
                SizedBox(height: 18),
                Text(Dictionary.pt_nindaya_karya,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .apply(color: Colors.black)),
                SizedBox(height: 4),
                Text(LocaleKeys.quality_health_safety_environment_system.tr(),
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .apply(color: Colors.black)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Hero buildLogo() {
    return new Hero(
        tag: "Logo",
        child: Container(
            child: new Image.asset(
          'assets/images/logo_qhse.png',
        )));
  }
}
