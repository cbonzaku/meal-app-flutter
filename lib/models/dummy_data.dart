import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';

import 'categories.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Italian',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Quick & Easy',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Hamburgers',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'German',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Light & Lovely',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Exotic',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Breakfast',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Asian',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'French',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Summer',
    color: Colors.teal,
  ),
];

const mealsData = [
  Meal(
      id: 'm1',
      title: 'koskos',
      Duration: "30 min",
      ingridiant: ["salt", "potato"],
      categories: ["c8"],
      diffeculty: Diffeculty.hard,
      imageUrl:
          "https://i.pinimg.com/564x/9d/89/eb/9d89eb4249215c5428df288692679a16.jpg",
      steps: [],
      isGlutenFree: false,
      isLactoseFree: false),
  Meal(
      id: 'm2',
      title: 'pizza',
      Duration: "15 min",
      ingridiant: ["salt", "cheaz"],
      categories: [
        "c1",
      ],
      diffeculty: Diffeculty.hard,
      imageUrl:
          "https://www.arhavirestaurantbatumi.com/wp-content/uploads/2021/05/classic-homemade-pizza-dough-close.jpg",
      steps: [],
      isGlutenFree: false,
      isLactoseFree: true),
  Meal(
      id: 'm3',
      title: 'Cheat\'s chickpea korma curry ',
      Duration: "40 min",
      ingridiant: [
        "500g pkt Coles Roasting Vegetables with Garlic & Rosemary",
        "400g can Coles Chickpeas, rinsed, drained",
        "375g pkt creamy korma simmer sauce",
        "2 x 250g Coles Microwave Basmati Rice Pouches",
        "1/3 cup coriander sprigs",
      ],
      categories: [
        "c1",
      ],
      diffeculty: Diffeculty.hard,
      imageUrl:
          "https://img.hellofresh.com/c_fit,f_auto,fl_lossy,h_500,q_auto,w_1900/hellofresh_s3/image/chicken-chickpea-and-spinach-korma-needs-new-200g-pulled-chicken-sku-will-be-cheaper-c2d1ad4d.jpg",
      steps: [
        """Chop the vegetables Unsure of the quantity needed?
         Click on the underlined ingredient to reveal the quantity.
          No need to flip back and forth! \n OK, GOT IT \n 
          and garlic from the roasting kit into 2cm pieces.
           (Reserve rosemary for another use.)
            Heat a large non-stick frying pan over medium heat.
             Add the vegetable mixture and chickpeas and cook,
         stirring, for 5 mins or until the onion softens.""",
        """ Add the korma sauce and 1/2 cup (125ml) water to the vegetable mixture in the pan. Bring to the boil. Reduce heat to low. Cover and cook, stirring, for 5 mins. Uncover. Cook, stirring, for a further 5 mins or until the vegetables are tender and the sauce thickens slightly.""",
        """Meanwhile, cook the rice following packet directions.""",
        """ Divide the rice and vegetable mixture among serving bowls. Sprinkle with coriander to serve."""
      ],
      isGlutenFree: true,
      isLactoseFree: true),
];
