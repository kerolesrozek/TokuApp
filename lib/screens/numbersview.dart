import 'package:flutter/material.dart';
import 'package:tokuapp/models/itemmodel.dart';
import 'package:tokuapp/widgets/itemwidget.dart';

class NumbersView extends StatelessWidget {
  NumbersView({super.key});
  List<ItemModel> items = [
    ItemModel(
        image: 'assets/images/numbers/number_one.png',
        jname: 'ichi',
        enName: 'one',
        music: 'assets/sounds/numbers/number_one_sound.mp3'
        ),
    ItemModel(
        image: 'assets/images/numbers/number_two.png',
        jname: 'ni',
        enName: 'two',
        music: 'assets/sounds/numbers/number_tow_sound.mp3'
        ),
    ItemModel(
        image: 'assets/images/numbers/number_three.png',
        jname: 'san',
        enName: 'three',
        music: 'assets/sounds/numbers/number_three_sound.mp3'
        ),
    ItemModel(
        image: 'assets/images/numbers/number_four.png',
        jname: 'shi',
        enName: 'four',
        music: 'assets/sounds/numbers/number_four_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_five.png',
        jname: 'go',
        enName: 'five',
        music: 'assets/sounds/numbers/number_five_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_six.png',
        jname: 'roku',
        enName: 'six',
        music: 'assets/sounds/numbers/number_six_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_seven.png',
        jname: 'sebun',
        enName: 'seven',
        music: 'assets/sounds/numbers/number_seven_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_eight.png',
        jname: 'hachi',
        enName: 'eight',
        music: 'assets/sounds/numbers/number_eight_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_nine.png',
        jname: 'Kyū',
        enName: 'nine',
        music: 'assets/sounds/numbers/number_nine_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_ten.png',
        jname: 'Jū',
        enName: 'ten',
        music: 'assets/sounds/numbers/number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        title: Text(
          'Numbers',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              color: Colors.orange,
              item: items[index],
            );
          }),
    );
  }
}

