import 'package:flutter_breaking/data/repo/character_repo_implementation.dart';
import 'package:flutter_breaking/data/web_services/character_web_services.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void startupServicesLocator() {
  getIt.registerSingleton<CharacterRepoImplementation>(
    CharacterRepoImplementation(
      CharacterWebServices(),
    ),
  );
}
