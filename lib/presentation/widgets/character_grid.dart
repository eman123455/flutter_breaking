import 'package:flutter/material.dart';
import 'package:flutter_breaking/data/models/character_model/character_model.dart';
import 'package:flutter_breaking/presentation/widgets/custom_card.dart';

class CharacterGrid extends StatelessWidget {
  const CharacterGrid({
    super.key,
    required this.characters
  });
  final List<CharacterModel> characters;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10),
          itemCount: characters.length,
          itemBuilder: (context, index) {
            return CustomCard(
              characterModel: characters[index],
            );
          }),
    );
  }
}