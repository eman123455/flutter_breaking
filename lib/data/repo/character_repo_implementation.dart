import 'package:flutter_breaking/data/models/character_model/character_model.dart';
import 'package:flutter_breaking/data/repo/character_repo.dart';
import 'package:flutter_breaking/data/web_services/character_web_services.dart';

class CharacterRepoImplementation implements CharacterRepo {
  CharacterWebServices characterWebServices;
  CharacterRepoImplementation(
    this.characterWebServices,
  );
  @override
  Future<List<CharacterModel>> getAllCharacters() async {
    var data = await characterWebServices.getAllCharacter();

    return data.map((character) => CharacterModel.fromJson(character)).toList();
  }
}
