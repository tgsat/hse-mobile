import 'package:flutter/material.dart';

homeAppBar(BuildContext context) => AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: Container(
        // margin: const EdgeInsets.all(6.0),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50),
              bottomLeft: Radius.circular(50)),
          child: Image.asset(
            'assets/images/logo_qhse.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
      actions: <Widget>[
        Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(8),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.red,
            child: IconButton(
              icon: Icon(
                Icons.notifications_active_outlined,
                color: Colors.white,
                size: 15,
              ),
              onPressed: () {},
            ),
          ),
        )
      ],
    );
