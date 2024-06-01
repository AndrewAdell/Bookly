import 'package:bookly/core/widgets/custom_Circular_Progress_Indicator.dart';
import 'package:bookly/core/widgets/custom_error_message.dart';
import 'package:bookly/features/Home/presentation/view%20models/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/Home/presentation/view%20models/featured_books_cubit/featured_books_states.dart';
import 'package:bookly/features/Home/presentation/view/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureadBooksCubit, FeaturedBooksStates>(
      builder: (BuildContext context, state) {
        if (state is FeaturedBooksSuccessState) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: FeaturedListViewItem(
                    urlImage:
                        state.books[index].volumeInfo.imageLinks.thumbnail,
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailureState) {
          return CustomErrorMessage(errMessage: state.errorsMessage);
        } else {
          return const Center(
            child: CustomCircularProgressIndicator(),
          );
        }
      },
    );
  }
}
