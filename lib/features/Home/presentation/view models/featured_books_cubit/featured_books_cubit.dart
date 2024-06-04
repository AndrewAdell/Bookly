import 'package:bookly/features/Home/data/repos/home_repo.dart';
import 'package:bookly/features/Home/presentation/view%20models/featured_books_cubit/featured_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureadBooksCubit extends Cubit<FeaturedBooksStates> {
  FeatureadBooksCubit(this.homeRepo) : super(FeaturedBooksInitialState());
  HomeRepo homeRepo;

  Future<void> featchFeaturedBooks() async {
    emit(FeaturedBooksLoadingState());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold((failure) {
      emit(FeaturedBooksFailureState(failure.errormessage));
    }, (books) {
      emit(FeaturedBooksSuccessState(books: books));
    });
  }
}
