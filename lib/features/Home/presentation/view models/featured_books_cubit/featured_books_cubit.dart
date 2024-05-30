import 'package:bookly/features/Home/presentation/view%20models/featured_books_cubit/featured_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureadBooksCubit extends Cubit<FeaturedBooksStates> {
  FeatureadBooksCubit() : super(FeaturedBooksInitialState());
}
