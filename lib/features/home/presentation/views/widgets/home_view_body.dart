import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_book_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_book_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        FeaturedBookListView(),
        CustomTitleText(),
      ],
    );
  }
}

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
