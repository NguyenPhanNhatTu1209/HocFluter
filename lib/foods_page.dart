import 'package:flutter/material.dart';
import 'package:foodapp/fake_data.dart';
import 'package:foodapp/models/category.dart';
import 'package:foodapp/models/food.dart';
class FoodsPage extends StatelessWidget{
  Category? category;
  FoodsPage({this.category});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // Map<String,Category> arguments = ModalRoute.of(context)!.settings.arguments;
    // this.category = arguments['category'];
    //filter foods
    List<Food> foods = FAKE_FOODS.where((food) => food.categoryId == this.category!.id).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Detail ${this.category!.content}'),
      ),
      body: Center(
        child:Text('This Show Food',
        style: TextStyle(fontSize: 20),
        ) ,
      ),
    );
  }
}