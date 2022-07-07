import 'package:flutter/material.dart';
import 'package:meal_app/screens/categories_screen.dart';
import 'package:meal_app/screens/favories_screen.dart';
import 'package:meal_app/widget/custom_drawer.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

int _tabindex = 0;

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
     List<Map<String, Object>> screens = [
      { 'screen': categoriesScreen(),'title': 'categories',},
      { 'screen': FavoriScreen(),'title': 'favories',}];
    return Scaffold(
      appBar: AppBar(title:  Text(screens[_tabindex]['title'] as String),),
      body: screens[_tabindex]['screen'] as Widget,
      drawer: CustomDrawer(),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.amberAccent,
          unselectedItemColor: Colors.black,
          currentIndex: _tabindex,
          backgroundColor: Theme.of(context).primaryColor,
          onTap: (index) {
            setState(() {
              _tabindex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: 'category',
              icon: Icon(Icons.category),
            ),
            BottomNavigationBarItem(
              label: 'favoris',
              icon: Icon(Icons.star),
            ),
          ]),
    );
  }
}
