import 'package:flutter/material.dart';
import 'package:flutter_breaking/constants/strings.dart';
import 'package:flutter_breaking/presentation/screens/character_details.dart';
import 'package:flutter_breaking/presentation/screens/characters_screen.dart';

class AppRouter {
  static Route? generateapproute(RouteSettings setting) {
    switch (setting.name) {
      case characterScreen:
        return MaterialPageRoute(builder: (_) => CharactersScreen());

      case characterDetails:
        return MaterialPageRoute(builder: (_) => CharacterDetails());
    }
  }
}
