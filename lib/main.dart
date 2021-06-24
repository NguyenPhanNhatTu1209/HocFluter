import 'package:flutter/material.dart';
import 'package:foodapp/categories_page.dart';
import 'package:foodapp/foods_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App with Navigation',
      initialRoute: '/',// dinh nghia route
      routes: {
        '/FoodsPage': (context)=>FoodsPage(),
        '/CategoriesPage':(context) => CategoriesPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        fontFamily: 'ViaodaLibre',
        textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(
            color: Color.fromRGBO(20, 52, 52, 1)
          ),
          body2: TextStyle(
            color: Color.fromRGBO(20, 52, 52, 1)
          ),
          title: TextStyle(
            fontFamily: 'ViaodaLibre',
            fontSize: 25
          )
        )
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Food\'s categories'),
        ),
        body: SafeArea(child: CategoriesPage(),),
      ),
    );
  }
}
