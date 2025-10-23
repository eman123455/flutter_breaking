import 'package:flutter/material.dart';
import 'package:flutter_breaking/constants/my_colors.dart';
import 'package:flutter_breaking/data/models/character_model/character_model.dart';

class CustomCard extends StatelessWidget {
  CustomCard({super.key,  required this .characterModel});
  CharacterModel characterModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [

          FadeInImage.assetNetwork(
             placeholder: 'assets/images/Loading Dots In Yellow.gif',
             image:characterModel.image!,
             fit: BoxFit.cover,
             height: double.infinity,
             width: double.infinity,
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
                padding: EdgeInsets.all(20),
                decoration:
                    BoxDecoration(color: MyColors.myGrey.withOpacity(0.5)),
                child: Center(
                    child: Text(
                  '${characterModel.name}',
                  style: TextStyle(color: Colors.white),
                ))),
          ),
        ],
      ),
    );
  }
}
