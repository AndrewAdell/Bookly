import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/Home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, BookModel>> fetchFeaturedBooks();
  Future<Either<Failures, BookModel>> fetchBestSellerBooks();
}
