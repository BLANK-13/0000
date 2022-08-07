// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:trainee_task/widgets/bottom_bar.dart';

import 'constants.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // to make sure everything is there when we start the app.
  await translator.init(
    localeType: LocalizationDefaultType.asDefined,
    languagesList: <String>['ar', 'en'],
    assetsDirectory: 'assets/lang/',
  );
  runApp(LocalizedApp(child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: mainColor),
      debugShowCheckedModeBanner: false,
      home: const BottomBarWidget(),

      localizationsDelegates: translator.delegates, // Android + iOS Delegates
      locale: translator.activeLocale, // Active locale
      supportedLocales: translator.locals(),
    );
  }
}
