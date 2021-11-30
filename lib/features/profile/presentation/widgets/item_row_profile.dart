import 'package:flutter/material.dart';
import 'package:hse_product/core/utils/values/color_config.dart';

itemRowProfile(BuildContext context, String title, String location,
    String address, String version) {
  return Column(
    children: [
      Text(
        title,
        style: Theme.of(context).textTheme.headline6,
      ),
      SizedBox(height: 4),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(height: 18, width: 18, child: Image.asset(location)),
        SizedBox(width: 8),
        Text(address),
      ]),
      SizedBox(height: 4),
      Text(version),
    ],
  );
}

itemRowBodyProfile(
    BuildContext context, String imageProfile, String nameProfile) {
  return ListTile(
    leading: Container(height: 20, width: 20, child: Image.asset(imageProfile)),
    title: Text(
      nameProfile,
      style: Theme.of(context).textTheme.bodyText1,
    ),
    trailing:
        Container(height: 10, width: 10, child: Icon(Icons.arrow_right_sharp)),
  );
}

itemProfile(String imageProfile) {
  return Container(
    height: 120,
    width: 120,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      boxShadow: [
        BoxShadow(
          blurRadius: 8,
          offset: Offset(0, 2),
          color: Colors.grey,
        ),
      ],
      border: Border.all(
        width: 3,
        color: ColorConfig.primaryColor,
      ),
    ),
    child: CircleAvatar(
      backgroundColor: Colors.grey[300],
      child: ClipOval(
        child: SizedBox(
          height: 120,
          width: 120,
          child: Image.asset(
            imageProfile,
            fit: BoxFit.cover,
          ),
        ),
      ),
    ),
  );
}
