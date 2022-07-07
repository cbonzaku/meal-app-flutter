import 'package:flutter/material.dart';
import 'package:meal_app/screens/categories_screen.dart';
import 'package:meal_app/screens/category_meals_screen.dart';
import 'package:meal_app/screens/filter_screen.dart';
import 'package:meal_app/screens/meal_details_screen.dart';
import 'package:meal_app/screens/tab_bar_screen.dart';
import 'package:meal_app/widget/custom_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blueGrey,
         

       
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black)
        )
      ),
      home: const TabBarScreen(),
      routes: {
        categoryMealsScreen.routeName:(context) => categoryMealsScreen(),
        MealDetailsScreen.routeName:(context)=> MealDetailsScreen(),
        FilterScreen.routeName:(context) => FilterScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  

 
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(),
      drawer:CustomDrawer(),
      body: categoriesScreen(),
    );
  }
}