import 'package:flutter/material.dart';
import 'package:foodapp/categories_page.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Food\'s categories'),
      ),
      body: SafeArea(
        child: CategoriesPage(),
      ),
    );
  }
}
