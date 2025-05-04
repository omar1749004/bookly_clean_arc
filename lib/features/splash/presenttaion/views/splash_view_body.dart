import 'package:bookly_clean_arc/core/utils/assets_images.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
         Image.asset(AssetsImages.logo),
       const  SizedBox(height: 20,),
         const Text("Reed Free books",
         textAlign: TextAlign.center,
         )
      ],
    );
  }
}