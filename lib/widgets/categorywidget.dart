import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
   CategoryWidget({
    super.key,
    required this.name,
    required this.color,
    this.ontap
  });
  String name;
  Color color;
  VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.only(left: 15),
        child: Text(
        name,
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        color: color,
        width: double.infinity,
        height: 80,
        alignment: Alignment.centerLeft,
      ),
    );
  }
}
