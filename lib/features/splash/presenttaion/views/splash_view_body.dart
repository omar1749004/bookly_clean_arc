import 'package:bookly_clean_arc/core/utils/assets_images.dart';
import 'package:bookly_clean_arc/core/utils/routes.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidAnimation;

  @override
  void initState() {
    initSlidingAnimation();

    
    navigatetoHome();

    super.initState();
  }

  

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsImages.logo),
        const SizedBox(height: 20),
        SlideTransition(
          position: slidAnimation,
          child: const Text("Reed Free books", textAlign: TextAlign.center),
        ),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    slidAnimation = Tween<Offset>(
      begin: const Offset(0, 10),
      end: Offset.zero,
    ).animate(animationController);

    animationController.forward();
  }

  void navigatetoHome() {
     Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).push(AppRoute.khome) ;
      // Get.to(
      //   () => HomeView(),
      //   transition: Transition.fade,
      //   duration: Duration(milliseconds: 250),
      // );
    });
  }
}
