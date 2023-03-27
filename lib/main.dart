import 'package:flutter/material.dart';
import 'package:movies/core/constants/app_strings.dart';
import 'package:movies/core/dataProvider/remote/diohelper.dart';
import 'package:movies/core/services/services_locator.dart';
import 'package:movies/movies/presentation/screens/movies_screen.dart';

void main(){
  DioHelper.init();
  ServicesLocator().init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.title,
      home: MainMoviesScreen(),
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:Colors.grey[900],
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
