import 'package:bloc/bloc.dart';
import 'package:flutter_breaking/data/models/character_model/character_model.dart';
import 'package:flutter_breaking/data/repo/character_repo_implementation.dart';
import 'package:meta/meta.dart';

part 'character_state.dart';

class CharacterCubit extends Cubit<CharacterState> {
  final CharacterRepoImplementation characterRepoImplementation;
  late List<CharacterModel> characters;
  CharacterCubit(this.characterRepoImplementation) : super(CharacterInitial());

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
    emit(CharacterLoding());

    try {
      var result = await characterRepoImplementation.getAllCharacters();
      emit(CharacterLoaded(characters: result));

    } catch (e) {
      emit(CharacterFailed(errMsg: e.toString()));
    }
  }
}
