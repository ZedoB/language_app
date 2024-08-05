import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';

import '../components/phrases_item.dart';
import '../models/item_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<ItemModel> phrases = const [
    ItemModel(
        jpName: 'Anata no namae wa \n     nandesuka ', enName: 'What is your name?',
        sound: 'sounds/phrases/what_is_your_name.wav'),
    ItemModel(
        jpName: 'Watashi wa anime ga \n     daisukidesu ', enName: 'I love anime',
        sound: 'sounds/phrases/i_love_anime.wav'),
    ItemModel(
        jpName: 'Watashi wa puroguramingu \n     ga daisukidesu ', enName: 'I love programming',
        sound: 'sounds/phrases/i_love_programming.wav'),
    ItemModel(
        jpName: 'Kimasu ka ', enName: 'Are you coming?',
        sound: 'sounds/phrases/are_you_coming.wav'),
    ItemModel(
        jpName: 'Hai, kimasu ', enName: 'Yes, i am coming',
        sound: 'sounds/phrases/yes_im_coming.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text('Phrases'),
      ),
      body: ListView.builder(itemBuilder: (ctx,index){
        return PhrasesItem(itemModel: phrases[index],color: Colors.cyan,);
      },itemCount: phrases.length,),
    );
  }
}


