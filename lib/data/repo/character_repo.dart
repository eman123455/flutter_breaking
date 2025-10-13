import 'package:flutter_breaking/data/models/character_model/character_model.dart';

abstract class CharacterRepo {
 Future<List<CharacterModel>>  getAllCharacters();
}
