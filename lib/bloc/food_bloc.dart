
import 'package:bloc_state_demo2/data/model/food.dart';
import 'package:bloc_state_demo2/data/repositories/foof_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'food_event.dart';
import 'food_state.dart';


class FoodBloc extends Bloc<FoodEvent, FoodState> {
  FoodRepository repository;

  FoodBloc({required this.repository}) : super(null!);

  FoodState get initialState => FoodInitialState();
  @override
  Stream<FoodState> mapEventToState(FoodEvent event) async* {
    if (event is FetchFoodEvent) {
      yield FoodLoadingState();

      try {
        List<Recipe> recipes = await repository.getFoods();
        yield FoodLoadedState(recipes: recipes);
      } catch (e) {
        yield FoodErrorState(message: e.toString());
      }
    }
  }
}