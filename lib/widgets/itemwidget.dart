import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:tokuapp/models/itemmodel.dart';

class ItemWidget extends StatelessWidget {
  ItemWidget({super.key, required this.item,required this.color});
  ItemModel item;
Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: double.infinity,
      height: 100,
      child: Row(
        children: [
          Container(
            color: Color(0xffFFFFF4DC),
            child: Image.asset(item.image),
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.jname,
                style: TextStyle(color: Colors.white, fontSize: 20),
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
                Audio(item.music!),
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
