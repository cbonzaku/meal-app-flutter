import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';
import 'package:meal_app/screens/meal_details_screen.dart';

class MealItem extends StatelessWidget {
  final id;
  final src;
  final title;
  final diffeculty;
  final duration;
  const MealItem(
      {Key? key,
      required this.src,
      required this.diffeculty,
      required this.title,
      required this.duration,
      required this.id})
      : super(key: key);

  String get diffe {
    switch (diffeculty) {
      case Diffeculty.simple:
        return "simple";
        break;
      case Diffeculty.midium:
        return "medium";
        break;
      case Diffeculty.hard:
        return "hard";
        break;
      default:
        return "unkown";
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(MealDetailsScreen.routeName, arguments: 
          id,
        );
      },
      child: Card(
        elevation: 6,
        margin: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Image.network(
                    src,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 250,
                  ),
                ),
                Positioned(
                    right: 1,
                    bottom: 30,
                    child: Container(
                      width: 220,
                      padding: EdgeInsets.all(6),
                      color: Colors.black26,
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                          overflow: TextOverflow.fade,
                        ),
                        softWrap: true,
                      ),
                    )),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.money,
                      ),
                      Text(
                        diffe,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.timer,
                      ),
                      Text(duration)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
