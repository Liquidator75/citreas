import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:citreas/amplifyconfiguration.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
  Color primaryColor = const Color(0XFF2B0752);
  MaterialColor primarySwatch = MaterialColor(
    primaryColor.value,
    <int, Color>{
      50: primaryColor,
      100: primaryColor,
      200: primaryColor,
      300: primaryColor,
      400: primaryColor,
      500: primaryColor,
      600: primaryColor,
      700: primaryColor,
      800: primaryColor,
      900: primaryColor,
    },
  );

  Future<void> _configureAmplify() async {
    try {
      await Amplify.addPlugins(
        [
          AmplifyAuthCognito(),
          AmplifyAPI(),
        ],
      );
      await Amplify.configure(amplifyconfig);
    } on AmplifyException catch (e) {
      safePrint(e);
    }
  }

  WidgetsFlutterBinding.ensureInitialized();
  await _configureAmplify();

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Nexa",
        primarySwatch: primarySwatch,
      ),
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
