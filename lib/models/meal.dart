import 'package:flutter/cupertino.dart';
import 'package:meal_app/models/categories.dart';

class Meal {
  final String id;
  final String title;
  final String Duration;
  final List<String> categories;
  final Diffeculty diffeculty;
  final String imageUrl;
  final List<String> ingridiant;
  final List<String> steps;
  final bool isGlutenFree;
  final bool isLactoseFree;

  const Meal(
      {required this.id,
      required this.title,
      required this.Duration,
      required this.ingridiant,
      required this.categories,
      required this.diffeculty,
      required this.imageUrl,
      required this.steps,
      required this.isGlutenFree,
      required this.isLactoseFree});
}

enum Diffeculty { simple, midium, hard }
