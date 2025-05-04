import 'package:bookly_clean_arc/core/utils/assets_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          onPressed: () {},
          icon: Icon(CupertinoIcons.search),
          iconSize: 24,
        ),
      ],
    );
  }
}
