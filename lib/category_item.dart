import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/models/category.dart';
import 'package:foodapp/routes/app_routes.dart';

class CategoryItem extends StatelessWidget {
  final Category? category;
  CategoryItem({this.category});
  @override
  Widget build(BuildContext context) {
    Color? _color = this.category!.color;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.FOOD,
            arguments: {'category': this.category});
      },
      splashColor: Colors.deepPurple,
      child: Container(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(this.category!.content.toString(),
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ],
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [_color!.withOpacity(0.4), _color],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft),
            color: _color,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
