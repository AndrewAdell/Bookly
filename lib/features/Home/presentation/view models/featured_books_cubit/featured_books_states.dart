import 'package:bookly/features/Home/data/models/book_model/book_model.dart';

class FeaturedBooksStates {}

class FeaturedBooksInitialState extends FeaturedBooksStates {}

class FeaturedBooksLoadingState extends FeaturedBooksStates {}

class FeaturedBooksFailureState extends FeaturedBooksStates {
  String errorsMessage;

  FeaturedBooksFailureState(this.errorsMessage);
}

class FeaturedBooksSuccessState extends FeaturedBooksStates {
  List<BookModel> books;

  FeaturedBooksSuccessState({required this.books});
}
