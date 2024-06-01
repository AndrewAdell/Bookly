import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/Home/data/repos/home_repo_implementation.dart';
import 'package:bookly/features/Home/presentation/view%20models/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Row(
        children: [
          Image.asset(
            Assets.logo,
            height: 18,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                FeatureadBooksCubit(getIt.get<HomeRepoImpl>())
                    .featchFeaturedBooks();
                GoRouter.of(context).push(AppRouter.searchView);
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 24,
              ))
        ],
      ),
    );
  }
}
