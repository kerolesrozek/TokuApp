import 'package:flutter/material.dart';
import 'package:tokuapp/screens/colorsview.dart';
import 'package:tokuapp/screens/familymembersview.dart';
import 'package:tokuapp/screens/numbersview.dart';
import 'package:tokuapp/screens/phrasesview.dart';
import 'package:tokuapp/widgets/categorywidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFF4D9),
      appBar: AppBar(
        backgroundColor: Color(0xff4A322B),
        title: Text(
          'TokuApp',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          CategoryWidget(
            name: 'Numbers',
            color: Colors.orange,
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NumbersView();
                  },
                ),
              );
            },
          ),
          CategoryWidget(
            name: 'Family Members',
            color: Colors.green,
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FamilyMemmersView();
                  },
                ),
              );
            },
          ),
          CategoryWidget(
            name: 'Colors',
            color: Color(0xff7E3FA3),
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ColorsView();
                  },
                ),
              );
            },
          ),
          CategoryWidget(
            name: 'Phrases',
            color: Color(0xffFF48A5CC),
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PhrasesView();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
