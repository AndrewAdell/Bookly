import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/search/presentaion/view/widgets/similar_best_seller_list_view.dart';
import 'package:bookly/features/search/presentaion/view/widgets/text_form_field_search.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormFieldSearch(),
          SizedBox(
            height: 16,
          ),
          Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(child: SimilarBestSellerListView())
        ],
      ),
    );
  }
}
