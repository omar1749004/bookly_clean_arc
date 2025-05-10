import 'package:bookly_clean_arc/core/utils/app_route.dart';
import 'package:bookly_clean_arc/core/utils/assets_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AssetsImages.logo,
        height: 18,
        ),
        Spacer() ,
        IconButton(
          onPressed: () {
            GoRouter.of(context).push(AppRoute.kSearchView);
          },
          icon: Icon(CupertinoIcons.search),
          iconSize: 24,
        ),
      ],
    );
  }
}
