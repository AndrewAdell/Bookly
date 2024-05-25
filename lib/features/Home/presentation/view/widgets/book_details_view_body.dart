import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Home/presentation/view/widgets/book_action.dart';
import 'package:bookly/features/Home/presentation/view/widgets/book_details_app_bar.dart';
import 'package:bookly/features/Home/presentation/view/widgets/book_rating.dart';
import 'package:bookly/features/Home/presentation/view/widgets/featured_list_view_item.dart';
import 'package:bookly/features/Home/presentation/view/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const BookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const FeaturedListViewItem(),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          'the jungle book',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard kipling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BookAction(),
        const SizedBox(
          height: 50,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'you can also like',
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilerBooksListView(),
        const SizedBox(
          height: 40,
        )
      ],
    );
  }
}
