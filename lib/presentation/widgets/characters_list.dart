import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_breaking/bussiness_logic/cubit/character_cubit.dart';
import 'package:flutter_breaking/presentation/widgets/custom_card.dart';

class CharactersList extends StatelessWidget {
  const CharactersList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterCubit, CharacterState>(
      builder: (context, state) {
        if (state is CharacterLoaded) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2 / 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemCount: state.characters.length,
                itemBuilder: (context, index) {
                  return CustomCard(
                    characterModel: state.characters[index],
                  );
                }),
          );
        } else if (state is CharacterLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is CharacterFailed) {
          return Text('${state.errMsg}');
        } else {
          return Text('data');
        }
      },
    );
  }
}
