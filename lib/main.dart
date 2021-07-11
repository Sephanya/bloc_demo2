import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/food_bloc.dart';
import 'data/repositories/foof_repository.dart';
import 'ui/homepage.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: BlocProvider(
          create: (context) => FoodBloc(repository: FoodRepositoryImpl()),
          child: HomePage()),
    );
  }
}



