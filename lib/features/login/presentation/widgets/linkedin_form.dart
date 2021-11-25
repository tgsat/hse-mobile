// import 'package:flutter/material.dart';
// // import 'package:linkedin_login/linkedin_login.dart';
// import 'package:hse_product/core/utils/values/linkedin_const.dart';
// import 'package:hse_product/features/login/presentation/bloc/login_bloc.dart';

// class LinkedinForm extends StatelessWidget {
//   final LoginBloc bloc;
//   const LinkedinForm({Key? key, required this.bloc}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return LinkedInAuthCodeWidget(
//       redirectUrl: LIKEDIN_REDIRECT_URL,
//       clientId: LINKEDIN_CLIENT_ID,
//       onGetAuthCode: (AuthorizationSucceededAction response) {
//         print('Auth code ${response.codeResponse.code}');
//         print('State: ${response.codeResponse.state}');
//         bloc.add(LoginLinkedinStarted(token: response.codeResponse.code!));
//         Navigator.pop(context);
//       },
//       onError: (AuthorizationFailedAction e) {
//         print('Error: ${e.toString()}');
//       },
//     );
//   }
// }
