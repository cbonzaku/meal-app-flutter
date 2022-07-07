import 'package:flutter/material.dart';
import 'package:meal_app/screens/filter_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Image.asset("bg.jpg", fit: BoxFit.cover),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(5),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(FilterScreen.routeName);
                },
                child: ListTile(
                  leading: Icon(
                    Icons.settings,
                  ),
                  title: Text("Setting",
                      style:
                          TextStyle(fontSize: 30, color: Colors.blueGrey[700])),
                ),
              )),
        ],
      ),
    );
  }
}
