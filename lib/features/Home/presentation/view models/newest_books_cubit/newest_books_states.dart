import 'package:bookly/features/Home/data/models/book_model/book_model.dart';

class NewestBooksState {}

class NewestBooksInitialState extends NewestBooksState {}

class NewestBooksLoadingState extends NewestBooksState {}

class NewestBooksFailureState extends NewestBooksState {
  String errMessage;
  NewestBooksFailureState({required this.errMessage});
}

class NewestBooksSuccessState extends NewestBooksState {
  List<BookModel> books;
  NewestBooksSuccessState({required this.books});
}
