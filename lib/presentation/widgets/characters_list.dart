import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_breaking/bussiness_logic/cubit/character_cubit.dart';
import 'package:flutter_breaking/presentation/widgets/character_grid.dart';

class CharactersList extends StatelessWidget {
  const CharactersList({super.key});
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterCubit, CharacterState>(
      builder: (context, state) {
        if (state is CharacterLoaded) {
          return CharacterGrid(
            characters: state.characters,
          );
        } else if (state is SearchedCharactersLoad) {
          return CharacterGrid(
            characters: state.searcheCharacters,
          );
        } else if (state is CharacterLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is CharacterFailed) {
          return Text('${state.errMsg}');
        } else {
          return Text('data');
        }
      },
    );
  }
}
