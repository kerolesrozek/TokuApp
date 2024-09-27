import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:tokuapp/models/phrasesitem.dart';

class PhrasesWidget extends StatelessWidget {
  PhrasesWidget({super.key, required this.item});
  PhrasesItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFF48A5CC),
      width: double.infinity,
      height: 100,
      child: Row(
        children: [
         
       SizedBox(width: 5,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.jname,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                item.enName,
                style: TextStyle(color: Colors.white, fontSize: 20),
              )
            ],
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              final assetsAudioPlayer = AssetsAudioPlayer();

              assetsAudioPlayer.open(
                Audio(item.sound),
              );
            },
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
