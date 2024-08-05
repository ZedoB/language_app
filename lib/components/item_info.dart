import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/item_model.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.itemModel});

  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(itemModel.enName,style: const TextStyle(color: Colors.white,
                  fontSize: 18),),
              Text(itemModel.jpName,style: const TextStyle(color: Colors.white,
                  fontSize: 18),),
            ],
          ),
        ),
        const Spacer(flex: 1,),
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: IconButton(
            icon: const Icon(Icons.play_arrow,color: Colors.white,size: 30,),
            onPressed: (){
              itemModel.playSound();
            },),
        )
      ],
    );
  }
}