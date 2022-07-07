import 'package:flutter/material.dart';
import 'package:meal_app/models/dummy_data.dart';
import 'package:meal_app/widget/meal_item.dart';

class categoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // final String id;
  // final String title;

  // categoryMealsScreen(this.id, this.title);

  @override
  Widget build(BuildContext context) {
    final routArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routArgs['title'];
    final categoryId = routArgs['id'];
    final categoryMeals = mealsData.where((element) {
      return element.categories.contains(categoryId);
    }).toList();
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
              title: categoryMeals[index].title,
              duration: categoryMeals[index].Duration,
              diffeculty: categoryMeals[index].diffeculty,
              src: categoryMeals[index].imageUrl,
              id: categoryMeals[index].id,
            );
          },
          itemCount: categoryMeals.length,
        ));
  }
}
