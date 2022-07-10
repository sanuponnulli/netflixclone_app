import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixclone/application/downloads/downloads_bloc.dart';
import 'package:netflixclone/core/colors/colors.dart';
import 'package:netflixclone/presentation/main_page/widgets/screen_main_page.dart';

import 'application/fast_lauhg/fastlaughs_bloc.dart';
import 'application/search/searchevent_bloc.dart';
import 'domain/core/di/injectable.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await congigureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getIt<DownloadsBloc>()),
        BlocProvider(create: (ctx) => getIt<SearcheventBloc>()),
        BlocProvider(create: (ctx) => getIt<FastlaughsBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'netflixdemo',
        theme: ThemeData(
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.black,
            ),
            scaffoldBackgroundColor: backgroundColor,
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: backgroundColor,
            ),
            primarySwatch: Colors.blue,
            backgroundColor: Colors.black,
            textTheme: TextTheme(
                bodyText1: TextStyle(color: Colors.white),
                bodyText2: TextStyle(color: Colors.white))),
        home: ScreenMainPage(),
      ),
    );
  }
}

// class MyHomepage extends StatelessWidget {
//   const MyHomepage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ScreenMainPage(),
//     );
//   }
// }
