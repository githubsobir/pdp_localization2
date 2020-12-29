import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'myhomepage.dart';

void main() { runApp(
  EasyLocalization(
      supportedLocales: [Locale('en', 'US'), Locale('ja', 'JA'), Locale('ko', 'KO')],
      path: 'assets/lang', // <-- change patch to your
      fallbackLocale: Locale('en', 'US'),
      child: MyApp()
  ),
);
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home: MyHomePage(),
    );
  }
}
