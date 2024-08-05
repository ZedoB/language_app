import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/item_model.dart';
import 'item_info.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.itemModel, required this.color});

  final ItemModel itemModel;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
              child: Image.asset(itemModel.image!),
              color: const Color(0xffFFF6DC)),
          Expanded(child: ItemInfo(itemModel: itemModel))
        ],
      ),
    );
  }
}






