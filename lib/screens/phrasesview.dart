import 'package:flutter/material.dart';
import 'package:tokuapp/models/phrasesitem.dart';
import 'package:tokuapp/widgets/itemwidget.dart';
import 'package:tokuapp/widgets/phraseswidget.dart';

class PhrasesView extends StatelessWidget {
  PhrasesView({super.key});
  List<PhrasesItem> items = [
    PhrasesItem(
        jname: 'Anata wa kite imasu',
        enName: 'are_you_coming',
        sound: 'assets/sounds/phrases/are_you_coming.wav'),
        PhrasesItem(
        jname: 'Kōdoku o wasurenaide kudasai',
        enName: 'dont_forget_to_subscribe',
        sound: 'assets/sounds/phrases/dont_forget_to_subscribe.wav'),
        PhrasesItem(
        jname: 'Go kibun wa ikagadesu ka',
        enName: 'how_are_you_feeling',
        sound: 'assets/sounds/phrases/how_are_you_feeling.wav'),
        PhrasesItem(
        jname: 'Watashi wa anime ga daisukidesu',
        enName: 'i_love_anime',
        sound: 'assets/sounds/phrases/i_love_anime.wav'),
        PhrasesItem(
        jname: 'Watashi wa puroguramingu ga daisukidesu',
        enName: 'i_love_programming',
        sound: 'assets/sounds/phrases/i_love_programming.wav'),
                PhrasesItem(
        jname: 'Puroguramingu wa kantandesu',
        enName: 'programming_is_easy',
        sound: 'assets/sounds/phrases/programming_is_easy.wav'),
                PhrasesItem(
        jname: 'Anata no namae wa nandesuka',
        enName: 'what_is_your_name',
        sound: 'assets/sounds/phrases/what_is_your_name.wav'),
                PhrasesItem(
        jname: 'Doko ni iku no',
        enName: 'where_are_you_going',
        sound: 'assets/sounds/phrases/where_are_you_going.wav'),
                PhrasesItem(
        jname: 'Hai, kimasu',
        enName: 'yes_im_coming',
        sound: 'assets/sounds/phrases/yes_im_coming.wav'),
        
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        title: Text(
          'Phrases',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return PhrasesWidget(
              item: items[index],
            );
          }),
    );
  }
}
