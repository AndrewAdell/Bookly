import 'package:bookly/core/widgets/custom_Circular_Progress_Indicator.dart';
import 'package:bookly/core/widgets/custom_error_message.dart';
import 'package:bookly/features/Home/presentation/view%20models/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/Home/presentation/view%20models/newest_books_cubit/newest_books_states.dart';
import 'package:bookly/features/Home/presentation/view/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
        builder: (context, state) {
      if (state is NewestBooksSuccessState) {
        return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: 10,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: BestSellerListViewItem(
                  bookModel: state.books[index],
                ),
              );
            });
      } else if (state is NewestBooksFailureState) {
        return CustomErrorMessage(errMessage: state.errMessage);
      } else {
        return const CustomCircularProgressIndicator();
      }
    });
  }
}
