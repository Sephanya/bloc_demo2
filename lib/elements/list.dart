
import 'dart:ui';

import 'package:bloc_state_demo2/data/model/food.dart';
import 'package:flutter/material.dart';

Widget buildHintsList(List<Recipe> recipes) {
  return Container(
    child: new ListView.builder(
        itemCount: recipes.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 90,
                      width: 100,
                      child: Image.network(recipes[index].imageUrl)),
                  // SizedBox(height: 30),
                  Text(recipes[index].title),
                ],
              ),
            ),
          );
        }),
  );
}