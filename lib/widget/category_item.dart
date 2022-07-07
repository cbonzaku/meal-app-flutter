import 'package:flutter/material.dart';
import 'package:meal_app/screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  CategoryItem({required this.id,required this.title, required this.color});

  void selectcat(BuildContext c) {
    Navigator.of(c).pushNamed(categoryMealsScreen.routeName,arguments: {
      'id':id,
      'title':title
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectcat(context),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [color, color.withOpacity(0.5)]),
            borderRadius: BorderRadius.circular(15)),
        child: Text(title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1),
      ),
    );
  }
}
