

import 'package:bloc_state_demo2/bloc/food_bloc.dart';
import 'package:bloc_state_demo2/bloc/food_event.dart';
import 'package:bloc_state_demo2/bloc/food_state.dart';
import 'package:bloc_state_demo2/elements/error.dart';
import 'package:bloc_state_demo2/elements/list.dart';
import 'package:bloc_state_demo2/elements/loading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late FoodBloc foodBloc;

  @override
  void initState() {
    foodBloc = BlocProvider.of<FoodBloc>(context);
    foodBloc.add(FetchFoodEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: BlocBuilder<FoodBloc, FoodState>(
            builder: (context, state) {
             if (state is FoodInitialState) {
                   buildLoading();
                  } else if (state is FoodLoadingState) {
                   buildLoading();
                  } else if (state is FoodLoadedState) {
                   buildHintsList(state.recipes);
                  } else if (state is FoodErrorState) {
                    buildError(state.message);
                  }
            }
            ),

      ),
    );
  }
}