import 'package:flutter/material.dart';
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
    return const MaterialApp(
      home: MainMoviesScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
