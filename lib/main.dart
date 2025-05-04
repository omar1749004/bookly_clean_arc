import 'package:bookly_clean_arc/core/constant/app_themes.dart';
import 'package:bookly_clean_arc/features/splash/presenttaion/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: darktheme,
      themeMode: ThemeMode.dark,
      home: SplashView(),
    );
  }
}