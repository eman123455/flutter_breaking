import 'package:flutter/material.dart';
import 'package:flutter_breaking/constants/my_colors.dart';
import 'package:flutter_breaking/data/models/character_model/character_model.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({super.key, required this.character});
   final CharacterModel character;
  @override
  Widget build(BuildContext context) {
    return  SliverAppBar(
      backgroundColor:MyColors.myGrey,
      expandedHeight: 500,
      pinned: true,
      stretch: true,
      iconTheme: const IconThemeData(
        color: MyColors.myWhite
      ),
      flexibleSpace: FlexibleSpaceBar(
        title: Text('${character.name}',
        style: const TextStyle(
          color:MyColors.myWhite
        ),
        ),
        background: Hero(
         tag:'${character.id}',
         child: Image.network('${character.image}',
           fit: BoxFit.cover,
           width: double.infinity,
           height: double.infinity,
         ),
       ),
      ),
    );;
  }
}



