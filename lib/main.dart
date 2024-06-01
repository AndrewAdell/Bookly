import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/Home/data/repos/home_repo_implementation.dart';
import 'package:bookly/features/Home/presentation/view%20models/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/Home/presentation/view%20models/newest_books_cubit/newest_books.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupServiceLocator();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeatureadBooksCubit(getIt.get<HomeRepoImpl>())
              ..featchFeaturedBooks()),
        BlocProvider(
            create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>())),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,

        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: keyPrimaryColor,
          textTheme: const TextTheme(
              titleMedium: TextStyle(fontFamily: 'Montserrat', fontSize: 18)),
        ),
        // scaffoldBackgroundColor: keyPrimaryColor,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
    );
  }
}
