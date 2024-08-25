import 'package:bookly_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class FeaturedBookListViewItem extends StatelessWidget {
  const FeaturedBookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Container(
          height: 130,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.amber,
            image: const DecorationImage(
              image: AssetImage(AppAssets.testImage),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
