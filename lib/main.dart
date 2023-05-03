import 'package:flutter/material.dart';
import 'package:projek_navigasi/firstscreen.dart';
import 'package:projek_navigasi/fourthscreen.dart';
import 'package:projek_navigasi/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
