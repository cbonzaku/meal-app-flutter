import 'package:flutter/material.dart';
import 'package:meal_app/widget/category_item.dart';
import 'package:meal_app/models/categories.dart';
import 'package:meal_app/models/dummy_data.dart';

class categoriesScreen extends StatelessWidget {
  const categoriesScreen({Key? key}) : super(key: key);
  static const title="Categories";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: GridView(
          children: DUMMY_CATEGORIES
              .map((e) => CategoryItem(id:e.id,color: e.color, title: e.title))
              .toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          )),
    );
  }
}
