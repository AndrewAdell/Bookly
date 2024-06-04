import 'package:bookly/features/Home/presentation/view/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class SimilarBestSellerListView extends StatelessWidget {
  const SimilarBestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 20),
            // child: BestSellerListViewItem(),
          );
        });
  }
}
