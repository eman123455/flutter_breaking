import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_breaking/bussiness_logic/cubit/character_cubit.dart';
import 'package:flutter_breaking/constants/my_colors.dart';
import 'package:flutter_breaking/presentation/widgets/characters_list.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.myGrey,
        appBar: AppBar(
          backgroundColor: MyColors.myYellow,
          title: const Text('Characters'),
        ),
        body: CharactersList());
  }
}
