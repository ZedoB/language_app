import 'package:flutter/material.dart';
import 'package:toku/screens/family_members_page.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrases_page.dart';

import '../components/category.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Learn Japanese')),
        backgroundColor: Colors.brown,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Category(text: 'Numbers',color: Colors.orange,
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
                builder: (context)=> const NumbersPage()));
          },),
          Category(text: 'Family Members',color: Colors.green,
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
                builder: (context)=> const FamilyMembersPage()));
          },),
          // Category(text: 'Colors',color: Colors.purple,),
          Category(text: 'Phrases',color: Colors.cyan,
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
                builder: (context)=> const PhrasesPage()));
          },),
        ],
      ),
    );
  }
}



