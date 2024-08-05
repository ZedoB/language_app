import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';

import '../models/item_model.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  final List<ItemModel> familyMembers = const [
    ItemModel(image: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya ', enName: 'father',
        sound: 'sounds/family_members/father.wav'),
    ItemModel(image: 'assets/images/family_members/family_mother.png',
        jpName: 'hahaoya ', enName: 'mother',
        sound: 'sounds/family_members/mother.wav'),
    ItemModel(image: 'assets/images/family_members/family_son.png',
        jpName: 'musuko ', enName: 'son',
        sound: 'sounds/family_members/son.wav'),
    ItemModel(image: 'assets/images/family_members/family_daughter.png',
        jpName: 'musume ', enName: 'daughter',
        sound: 'sounds/family_members/daughter.wav'),
    ItemModel(image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'sofu ', enName: 'grand father',
        sound: 'sounds/family_members/grand father.wav'),
    ItemModel(image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'sobo ', enName: 'grand mother',
        sound: 'sounds/family_members/grand mother.wav'),
    ItemModel(image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'ani ', enName: 'older brother',
        sound: 'sounds/family_members/older brother.wav'),
    ItemModel(image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'ane ', enName: 'older sister',
        sound: 'sounds/family_members/older sister.wav'),
    ItemModel(image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'ototo ', enName: 'younger brother',
        sound: 'sounds/family_members/younger brother.wav'),
    ItemModel(image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'imoto', enName: 'younger sister',
        sound: 'sounds/family_members/younger sister.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text('Family Members'),
      ),
      body: ListView.builder(itemBuilder: (ctx,index){
        return Item(itemModel: familyMembers[index],color: Colors.green,);
      },itemCount: familyMembers.length,),
    );
  }
}


