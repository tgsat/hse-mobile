import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_primary.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:flutter/cupertino.dart';
import 'package:hse_product/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:hse_product/features/profile/presentation/widgets/body_profile.dart';
import 'package:hse_product/di/injection_container.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarPrimary(context, title: Dictionary.profile),
      body: BlocProvider(
        create: (context) => sl<ProfileBloc>()..add(ProfileStarted()),
        child: BodyProfile(),
      ),
    );
  }
}
