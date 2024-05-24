import 'package:bookly/features/Home/presentation/view/widgets/book_details_app_bar.dart';
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
          padding: EdgeInsets.symmetric(horizontal: width * .28),
          child: const CustomBookItem(),
        )
      ],
    );
  }
}
