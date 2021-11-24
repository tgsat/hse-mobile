import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hse_product/core/presentation/widgets/buttons/button_primary.dart';
import 'package:hse_product/core/presentation/widgets/shimmers/shimmer_list_vertical.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:hse_product/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:hse_product/features/splash/presentation/pages/splash_page.dart';

import 'display_data.dart';

class BodyProfile extends StatefulWidget {
  const BodyProfile({Key? key}) : super(key: key);

  @override
  _BodyProfileState createState() => _BodyProfileState();
}

class _BodyProfileState extends State<BodyProfile> {
  @override
  Widget build(BuildContext context) {
    final _bloc = BlocProvider.of<ProfileBloc>(context);
    return Container(
      height: SizeConfig.maxHeight(context),
      width: SizeConfig.maxWidth(context),
      margin: EdgeInsets.all(SizeConfig.marginActivity),
      child: SingleChildScrollView(
        child: Column(
          children: [
            BlocConsumer<ProfileBloc, ProfileState>(
              listener: (context, state) {
                if (state is ProfileToSplash)
                  Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => SplashPage()),
                    (Route<dynamic> route) => false,
                  );
              },
              builder: (context, state) {
                if (state is ProfileInProgress)
                  return ShimmerListVertical();
                else if (state is ProfileSuccess)
                  return DisplayData(profile: state.profile);
                else
                  return Container();
              },
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              child: PrimaryButton(
                label: Dictionary.log_out,
                onPress: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: Text('Do you want to logout?'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              _bloc.add(ProfileLogout());
                              Navigator.pop(context);
                            },
                            child: Text('Yes'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Close'),
                          )
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
