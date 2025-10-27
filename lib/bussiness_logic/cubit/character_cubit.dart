import 'package:bloc/bloc.dart';
import 'package:flutter_breaking/data/models/character_model/character_model.dart';
import 'package:flutter_breaking/data/repo/character_repo.dart';
import 'package:meta/meta.dart';

part 'character_state.dart';

class CharacterCubit extends Cubit<CharacterState> {
  final CharacterRepo characterRepo;
  List<CharacterModel> characters = [];
  List<CharacterModel> searchedCharacters = [];
  bool is_Searching = false;
  CharacterCubit(this.characterRepo) : super(CharacterInitial());

//   Future<List<CharacterModel>> getAllCharacters() async {
//     var ch =
//         await characterRepoImplementation.getAllCharacters().then((characters) {
//       emit(CharacterLoaded(characters: characters));
//       return characters;
//     });

//     return ch;
//   }
// }

//important
  Future<void> getAllCharacters() async {
    emit(CharacterLoading());

    try {
      var result = await characterRepo.getAllCharacters();
      characters = result;
      emit(CharacterLoaded(characters: result));
    } catch (e) {
      emit(CharacterFailed(errMsg: e.toString()));
    }
  }

  Future<void> getSearchedCharacters(String searchedCharacter) async {
    if (characters.isEmpty) {
      return;
    }
    is_Searching = true;
    searchedCharacters = characters
        .where((character) => character.name!
            .toLowerCase()
            .contains(searchedCharacter.toLowerCase()))
        .toList();

    emit(SearchedCharactersLoad(searcheCharacters: searchedCharacters));
  }

  void clearSearch() {
    is_Searching = false;
    emit(CharacterLoaded(characters: characters));
  }
}
