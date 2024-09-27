import 'package:flutter/material.dart';
import 'package:tokuapp/models/itemmodel.dart';
import 'package:tokuapp/widgets/itemwidget.dart';

class ColorsView extends StatelessWidget {
  ColorsView({super.key});
  List<ItemModel> items = [
    ItemModel(
        image: 'assets/images/colors/color_black.png',
        jname: 'Kuro',
        enName: 'black',
        music: 'assets/sounds/colors/black.wav'
        ),
    ItemModel(
      
        image: 'assets/images/colors/color_brown.png',
        jname: 'Chairo',
        enName: 'brown',
music: 'assets/sounds/colors/brown.wav'        ),
    ItemModel(
        image: 'assets/images/colors/color_dusty_yellow.png',
        jname: 'Dasutiierō',
        enName: 'dusty yellow',
music: 'assets/sounds/colors/dusty yellow.wav'        ),
    ItemModel(
        image: 'assets/images/colors/color_gray.png',
        jname: 'Gurē',
        enName: 'gray',
       music: 'assets/sounds/colors/gray.wav'),
    ItemModel(
        image: 'assets/images/colors/color_green.png',
        jname: 'Midori',
        enName: 'green',
        music: 'assets/sounds/colors/green.wav'),
    ItemModel(
        image: 'assets/images/colors/color_red.png',
        jname: 'Aka',
        enName: 'red',
        music: 'assets/sounds/colors/red.wav'),
    ItemModel(
        image: 'assets/images/colors/color_white.png',
        jname: 'Shiro',
        enName: 'white',
        music: 'assets/sounds/colors/white.wav'),
    ItemModel(
        image: 'assets/images/colors/yellow.png',
        jname: 'Kiiro',
        enName: 'yellow',
        music: 'assets/sounds/colors/yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        title: Text(
          'Colors',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              color: Color(0xff7E3FA3),
              item: items[index],
            );
          }),
    );
  }
}

//keroles rozek hapip angly rezk ebrahim