import 'package:flutter/material.dart';
import 'package:flutter_breaking/constants/my_colors.dart';
import 'package:flutter_breaking/data/models/character_model/character_model.dart';
import 'package:flutter_breaking/presentation/widgets/custom_sliver_app_bar.dart';

class CharacterDetails extends StatelessWidget {
  const CharacterDetails({super.key, required this.character});
  final CharacterModel character;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomSliverAppBar(character: character),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
                margin: const EdgeInsets.fromLTRB(14, 14, 14, 0),
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   characterInfo(title:'Location name  :  ', value: character.location!.name??'location not found'),
                   customDivider(endIndent: 245),
                   characterInfo(title:'Status  :  ', value: character.status!),
                   customDivider(endIndent: 315),
                   characterInfo(title:'Gender  :  ', value: character.gender!),
                   customDivider(endIndent: 310),
                   characterInfo(title:'Species  :  ', value: character.species!),
                   customDivider(endIndent: 300),
                   characterInfo(title:'Origin name   :  ', value: character.origin!.name??''),
                   customDivider(endIndent: 260),
                   const SizedBox(height: 20,)
                  ],
                ),
              ),
              const SizedBox(height: 700,)
            ],
          ),
        ),
      ],
    );
  }
}

Widget characterInfo( {required String title, required String value }){

  return RichText(
    text:TextSpan(
      children: [
        TextSpan(
         text: title,
         style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
         ),
        ),
        TextSpan(
         text:value,
         style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
         ),
        ),
      ]
    )
     );
}

Widget customDivider({required double endIndent}) {
  return Divider(
    height: 30,
    thickness: 2,
    color: MyColors.myYellow,
    endIndent: endIndent,
  );
}
