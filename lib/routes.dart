import 'dart:html';

import 'package:flutter/material.dart';
import 'package:projek_navigasi/fifthscreen.dart';
import 'package:projek_navigasi/fourthscreen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/empat':
        return MaterialPageRoute(builder: (_) => FourthScreen());
        break;
      case '/lima':
        if (args is String) {
          return MaterialPageRoute(builder: (_) => FifthScreen(data: args));
        }
        return _errorRoute();
        break;
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text("Error Page")),
      );
    });
  }
}
