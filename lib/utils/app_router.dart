import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_breaking/bussiness_logic/cubit/character_cubit.dart';
import 'package:flutter_breaking/constants/strings.dart';
import 'package:flutter_breaking/data/repo/character_repo_implementation.dart';
import 'package:flutter_breaking/data/web_services/character_web_services.dart';
import 'package:flutter_breaking/presentation/screens/character_details.dart';
import 'package:flutter_breaking/presentation/screens/characters_screen.dart';
import 'package:flutter_breaking/utils/service_locator.dart';
import 'package:get_it/get_it.dart';

class AppRouter {
  // late CharacterRepoImplementation characterRepoImplementation;
  // static late  CharacterCubit characterCubit;

  // AppRouter() {
  //   characterRepoImplementation =
  //       CharacterRepoImplementation(CharacterWebServices());
  //   characterCubit = CharacterCubit(characterRepoImplementation);
  // }

  static Route? generateapproute(RouteSettings setting) {
    switch (setting.name) {
      case characterScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                    create: (context) => CharacterCubit(
                    getIt.get<CharacterRepoImplementation>()
                  )..getAllCharacters(),
                  child: CharactersScreen(),
                ));

      case characterDetails:
        return MaterialPageRoute(builder: (_) => CharacterDetails());
    }
  }
}
