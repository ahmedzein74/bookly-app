import 'package:bookly_app/core/utils/app_assets.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomHomeViewAppBar extends StatelessWidget {
  const CustomHomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20
          // horizontal: 16.0,
          ),
      child: Row(
        children: [
          Image.asset(
            AppAssets.logo,
            height: 30,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kSearchVeiw);
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 30,
              ))
        ],
      ),
    );
  }
}
