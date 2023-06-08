// main.dart

import 'package:easy_localization/easy_localization.dart';
import 'package:flag_puzzle/pages/home_page.dart';
import 'package:flag_puzzle/thema.dart';
import 'package:flag_puzzle/utils/strings.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
      supportedLocales: const [Locale('en', 'US'), Locale('tr', 'TR')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en', 'US'),
      child: const MyApp()));
}

////ar-AE.json

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: themaTitle,
      theme: theme,
      home: const HomePage(),
    );
  }
}