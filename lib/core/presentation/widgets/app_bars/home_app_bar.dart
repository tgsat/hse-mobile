import 'package:flutter/material.dart';
import 'package:hse_product/core/utils/values/size_config.dart';

homeAppBar(BuildContext context) => AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: Container(
        margin: EdgeInsets.only(left: SizeConfig.marginActivity),
        child: Image.asset(
          'assets/images/logo_qhse.png',
          width: 40,
          height: AppBar().preferredSize.height,
        ),
      ),
      actions: <Widget>[
        Container(
          margin: EdgeInsets.all(6),
          padding: EdgeInsets.all(8),
          child: PopupMenuButton(
            child: Row(
              children: [
                Text('ID', style: TextStyle(color: Colors.black)),
                // SizedBox(width: 5),
                Icon(
                  Icons.arrow_drop_down_sharp,
                  color: Colors.black,
                  // size: 20.0,
                )
              ],
            ),
            // onSelected: (val) async {
            //   await Session.setLocale(val);
            //   context.locale = Locale(val);
            // },
            itemBuilder: (context) {
              return List.generate(1, (index) {
                return PopupMenuItem(
                  child: Text('ID'),
                );
              });
            },
          ),
        )
      ],
    );
