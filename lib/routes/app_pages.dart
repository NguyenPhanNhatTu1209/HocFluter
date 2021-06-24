import 'package:flutter/material.dart';
import 'package:foodapp/app.dart';
import 'package:foodapp/categories_page.dart';
import 'package:foodapp/foods_page.dart';
import 'package:foodapp/routes/app_routes.dart';

class AppPages {
  Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.CATEGORIES:
        return _buildRoute(settings, CategoriesPage());
      case AppRoutes.FOOD:
        final arguments = settings.arguments as Map;
        return _buildRoute(
          settings,
          FoodsPage(
            category: arguments['category'],
          ),
        );
      case AppRoutes.ROOT:
        return _buildRoute(settings, App());
      default:
        return _buildRoute(settings, App());
    }
  }

  MaterialPageRoute _buildRoute(RouteSettings routeSettings, Widget builder) {
    return MaterialPageRoute(
      settings: routeSettings,
      builder: (context) => builder,
    );
  }
}
