import 'package:flutter/material.dart';
import 'package:recipe_app/screens/home_page.dart';
import 'package:recipe_app/screens/login_page.dart';
import 'package:recipe_app/screens/recipe_detail_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: const LoginPage(),
      home: RecipeDetailPage(),
      theme: ThemeData(
        fontFamily: "SofiaPro",
      ),
      routes: {
        'home': (context) => HomePage(),

      },
    );
  }
}
