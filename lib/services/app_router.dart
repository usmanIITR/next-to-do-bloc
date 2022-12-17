import 'package:flutter/material.dart';
import 'package:next_to_do/screens/task_screen.dart';
import 'package:next_to_do/screens/trash_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case TrashScreen.id:
        return MaterialPageRoute(builder: (_) => TrashScreen());
      case TasksScreen.id:
        return MaterialPageRoute(builder: (_) => TasksScreen());
      default:
        return null;
    }
  }
}
