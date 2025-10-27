import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_breaking/bussiness_logic/cubit/character_cubit.dart';
import 'package:flutter_breaking/constants/my_colors.dart';
import 'package:flutter_breaking/presentation/widgets/characters_list.dart';

// ignore: must_be_immutable
class CharactersScreen extends StatefulWidget {
  CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {

  final TextEditingController searchEditingController = TextEditingController();
    Widget searchTextField() {
      return TextField(
        controller: searchEditingController,
        cursorColor: MyColors.myGrey,
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: 'Find a character....',
          hintStyle: TextStyle(
            color: MyColors.myGrey,
            fontSize: 24,
          ),
        ),
        style: const TextStyle(
          color: MyColors.myGrey,
          fontSize: 18,
        ),
        onChanged: (value) {
          (context).read<CharacterCubit>().getSearchedCharacters(value);
        },
      );
    }

    void _clearSearch() {
      searchEditingController.clear();
      (context).read<CharacterCubit>().clearSearch();
    }

    void _stopSearching() {
        _clearSearch();
    }

    void _startSearching() {
      ModalRoute.of(context)!
          .addLocalHistoryEntry(LocalHistoryEntry(onRemove: _stopSearching));

      
    context.read<CharacterCubit>().is_Searching = true;
    }

    List<Widget> appBarActions() {
         final cubit = context.read<CharacterCubit>();
      if (cubit.is_Searching) {
        return [
          IconButton(
              onPressed: () {
                _clearSearch();
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.clear,
                color: MyColors.myGrey,
              )),
        ];
      } else {
        return [
          IconButton(
              onPressed: () {
                _startSearching();
              },
              icon: const Icon(
                Icons.search,
                color: MyColors.myGrey,
              )),
        ];
      }
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.myGrey,
      appBar: AppBar(
          backgroundColor: MyColors.myYellow,
          title: context.watch<CharacterCubit>().is_Searching
              ? searchTextField()
              : const Text(
                  'Characters',
                  style: TextStyle(
                    fontSize: 26,
                  ),
                ),
          actions: appBarActions()),
      body: const CharactersList(),
    );
  }
}
