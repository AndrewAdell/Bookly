import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Home/presentation/view/widgets/book_details_app_bar.dart';
import 'package:bookly/features/Home/presentation/view/widgets/book_rating.dart';
import 'package:bookly/features/Home/presentation/view/widgets/custom_book_item.dart';
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
          child: const CustomBookItem(),
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
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
