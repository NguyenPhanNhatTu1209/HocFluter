import 'dart:math';

import 'package:flutter/cupertino.dart';

class Food{
  int? id;
  String? name;
  String? urlImage;
  Duration? duration;
  Complexity? complexity;
  List<String>? ingredients = [];
  int? categoryId;
  Food({ @required this.name, @required this.urlImage, @required this.duration, this.complexity, this.ingredients, this.categoryId }){
    this.id = Random().nextInt(1000);
  }
}

enum Complexity {
  Simple,
  Medium,
  Hard
}