

import 'package:bloc_state_demo2/data/model/food.dart';
import 'package:equatable/equatable.dart';



abstract class FoodState extends Equatable {}

class FoodInitialState extends FoodState {
  @override
  List<Object> get props => [];
}

class FoodLoadingState extends FoodState {
  @override
  List<Object> get props => [];
}

class FoodLoadedState extends FoodState {
  List<Recipe> recipes;
  FoodLoadedState({required this.recipes});
  @override
  List<Object> get props => null!;
}

class FoodErrorState extends FoodState {
  String message;
  FoodErrorState({required this.message});
  @override
  List<Object> get props => null!;
}