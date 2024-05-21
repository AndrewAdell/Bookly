import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Home/presentation/view/widgets/best_seller_list_view_item.dart';
import 'package:bookly/features/Home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly/features/Home/presentation/view/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedListView(),
          SizedBox(
            height: 50,
          ),
          Text('Best Seller', style: Styles.titleMedium),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
