
import 'package:flutter/material.dart';
import 'package:justhink_new_mobil_application_purple/core/navigator/app_router.dart';
import '../presentation/resources/theme_manager.dart';

final router  = AppRouter();


class MyApp extends StatefulWidget {
  MyApp._internal(); // private named constractor

  static final MyApp instance =
      MyApp._internal(); // single instance ya da singleton

  int appState = 0;

  factory MyApp() => instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme(),
      routerDelegate: router.delegate(),
      routeInformationParser: router.defaultRouteParser(),
    );
  }
}
