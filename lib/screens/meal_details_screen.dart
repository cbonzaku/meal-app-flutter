import 'package:flutter/material.dart';
import 'package:meal_app/models/dummy_data.dart';
import 'package:meal_app/models/meal.dart';

class MealDetailsScreen extends StatelessWidget {
  static const routeName = "/MealDetails";

  const MealDetailsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments as String;
    final Meal meal = mealsData.singleWhere((element) => element.id == id);
    return Scaffold(
      appBar: AppBar(),
      body: Stack(children: [
        Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(meal.imageUrl, fit: BoxFit.cover)),
        Container(
          height: MediaQuery.of(context).size.height,
          child: Container(
            color: Colors.black54,
            child: Container(
              height:  MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Text(
                    "Ingrediant",
                    style: TextStyle(color: Colors.amber, fontSize: 30),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Text(
                              meal.ingridiant[index],
                              style: TextStyle(color: Colors.white, fontSize: 30),
                            ),
                            Divider(color: Colors.white70),
                          ],
                        );
                      },
                      itemCount: meal.ingridiant.length,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
