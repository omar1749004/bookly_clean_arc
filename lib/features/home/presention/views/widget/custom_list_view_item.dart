
import 'package:bookly_clean_arc/core/utils/assets_images.dart';
import 'package:flutter/material.dart';

class CustomListViewitem extends StatelessWidget {
  const CustomListViewitem({super.key});

  @override
  Widget build(BuildContext context) {
    return   AspectRatio(
      aspectRatio: 2.7/4,
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.red,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsImages.tset))
          ),
          ),
    );
  }
}

