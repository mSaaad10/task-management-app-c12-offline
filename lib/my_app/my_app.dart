import 'package:flutter/material.dart';
import 'package:todo_app_c12_offline/config/theme/my_theme.dart';
import 'package:todo_app_c12_offline/core/routes_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RoutesManager.router,
      initialRoute: RoutesManager.registerRoute,
      theme: MyTheme.lightTheme,
      themeMode: ThemeMode.light,
    );
  }
}
