import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/category_item.dart';
import 'package:foodapp/fake_data.dart';
class CategoriesPage extends StatelessWidget{
  static final String routeName='/CategoriesPage';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView(
      padding: EdgeInsets.all(12),
      children: FAKE_CATEGORIES.map((e) => CategoryItem(category: e)).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 3/2, // ti le chieu rong vs chieu cao
          crossAxisSpacing: 10,// do rong cua luoi theo chieu doc
          mainAxisSpacing: 10, // do rong luoi theo chieu ngang

        ));
  }
}
