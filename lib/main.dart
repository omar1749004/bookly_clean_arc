import 'package:bookly_clean_arc/core/constant/app_themes.dart';
import 'package:bookly_clean_arc/core/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      darkTheme: darktheme,
      themeMode: ThemeMode.dark,
     // home: SplashView(),
    );
  }
}