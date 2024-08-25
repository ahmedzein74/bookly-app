import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTitleText extends StatelessWidget {
  const CustomTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 24, top: 50),
      child: Row(
        children: [
          Text(
            textAlign: TextAlign.right,
            'Best Seller',
            style: Styles.titleMedium,
          ),
        ],
      ),
    );
  }
}
