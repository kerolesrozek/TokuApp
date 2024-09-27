import 'package:flutter/material.dart';
import 'package:tokuapp/models/itemmodel.dart';
import 'package:tokuapp/widgets/itemwidget.dart';

class FamilyMemmersView extends StatelessWidget {
   FamilyMemmersView({super.key});
List<ItemModel> items = [
    ItemModel(
        image: 'assets/images/family_members/family_daughter.png',
        jname: 'Musume',
        enName: 'daughter',
        music: 'assets/sounds/family_members/daughter.wav'
        ),
    ItemModel(
        image: 'assets/images/family_members/family_father.png',
        jname: 'Chichioya',
        enName: 'father',
        music: 'assets/sounds/family_members/father.wav'
        ),
    ItemModel(
        image: 'assets/images/family_members/family_grandfather.png',
        jname: 'Sofu',
        enName: 'grand father',
        music: 'assets/sounds/family_members/grand father.wav'
        ),
    ItemModel(
        image: 'assets/images/family_members/family_grandmother.png',
        jname: 'Sobo',
        enName: 'grand mother',
        music: 'assets/sounds/family_members/grand mother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_mother.png',
        jname: 'Hahaoya',
        enName: 'mother',
        music: 'assets/sounds/family_members/mother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_older_brother.png',
        jname: 'Ani',
        enName: 'older brother',
        music: 'assets/sounds/family_members/older bother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_older_sister.png',
        jname: 'Ane',
        enName: 'older sister',
        music: 'assets/sounds/family_members/older sister.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_son.png',
        jname: 'Musuko',
        enName: 'son',
        music: 'assets/sounds/family_members/son.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_younger_brother.png',
        jname: 'Otōto',
        enName: 'younger brother',
        music: 'assets/sounds/family_members/younger brohter.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_younger_sister.png',
        jname: 'Imōto',
        enName: 'younger sister',
        music: 'assets/sounds/family_members/younger sister.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        title: Text(
          'Family Members',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              color: Colors.green,
              item: items[index],
            );
          }),
    );
  }
}