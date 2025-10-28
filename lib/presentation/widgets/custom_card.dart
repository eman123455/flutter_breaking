import 'package:flutter/material.dart';
import 'package:flutter_breaking/constants/my_colors.dart';
import 'package:flutter_breaking/constants/strings.dart';
import 'package:flutter_breaking/data/models/character_model/character_model.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.characterModel});
  final CharacterModel characterModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, characterDetails,
            arguments: characterModel);
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Hero(
              tag: '${characterModel.id}',
              child: FadeInImage.assetNetwork(
                placeholder: 'assets/images/Loading Dots In Yellow.gif',
                image: characterModel.image!,
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
            ),
            //   Image.network(
            //   characterModel.image??'',
            //   fit: BoxFit.cover,
            //   height: double.infinity,
            //   width: double.infinity,
            // ),
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration:
                      BoxDecoration(color: MyColors.myGrey.withOpacity(0.5)),
                  child: Center(
                      child: Text(
                    '${characterModel.name}',
                    style: const TextStyle(color: Colors.white),
                  ))),
            ),
          ],
        ),
      ),
    );
  }
}
