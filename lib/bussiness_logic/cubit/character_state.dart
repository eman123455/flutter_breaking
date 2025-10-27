part of 'character_cubit.dart';

@immutable
sealed class CharacterState {}

final class CharacterInitial extends CharacterState {}

final class CharacterLoaded extends CharacterState {
  List<CharacterModel> characters;
  CharacterLoaded({required this.characters});
}

final class CharacterLoading extends CharacterState {}

final class CharacterFailed extends CharacterState {
  final String errMsg;

  CharacterFailed({required this.errMsg});
  
}

final class SearchedCharactersLoad extends CharacterState {
  List<CharacterModel> searcheCharacters;
  SearchedCharactersLoad({required this .searcheCharacters});
  
}


