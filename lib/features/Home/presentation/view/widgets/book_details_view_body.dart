import 'package:bookly/features/Home/presentation/view/widgets/book_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        BookDetailsAppBar(),
      ],
    );
  }
}
