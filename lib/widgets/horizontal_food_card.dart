import 'package:flutter/material.dart';
import 'package:food_app/utils/color.dart';

class HorizontalFoodCard extends StatelessWidget {
  HorizontalFoodCard(this.imgURL, this.itemCount, this.sweetName);

  String imgURL;
  int itemCount;
  String sweetName;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Container(
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                        image: NetworkImage(imgURL), fit: BoxFit.cover)),
                width: width / 2.89,
                height: height * 0.168,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(sweetName + " - ",
                  style: TextStyle(
                      letterSpacing: 0.6,
                      fontWeight: FontWeight.w600,
                      color: GRAY_TEXT)),
              Text(
                "$itemCount Item",
                style: TextStyle(fontWeight: FontWeight.w700),
              )
            ],
          )
        ],
      ),
    );
  }
}
