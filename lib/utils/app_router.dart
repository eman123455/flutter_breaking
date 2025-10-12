import 'package:flutter/material.dart';
import 'package:flutter_breaking/presentation/screens/characters_screen.dart';

class AppRouter {
  static Route? generateapproute(RouteSettings setting) {
    switch (setting.name) {
      case '/':
        return MaterialPageRoute(builder: (_)=>CharactersScreen());
    }
  }
}
