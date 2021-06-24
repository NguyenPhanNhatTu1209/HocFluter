import 'package:flutter/material.dart';
import 'package:foodapp/routes/app_pages.dart';
import 'package:foodapp/routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App with Navigation',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        fontFamily: 'ViaodaLibre',
      ),
      initialRoute: AppRoutes.ROOT,
      onGenerateRoute: (settings) => AppPages().getRoute(settings),
    );
  }
}
