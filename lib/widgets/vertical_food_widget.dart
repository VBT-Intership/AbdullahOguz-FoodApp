import 'package:flutter/material.dart';
import 'package:food_app/utils/color.dart';

class VerticalFoodCard extends StatelessWidget {
  VerticalFoodCard(
      this.imageURL,
      this.foodTitle,
      this.foodClip1,
      this.foodClip2,
      this.price,
      this.softClip1,
      this.deepClip1,
      this.softClip2,
      this.deepClip2);

  String imageURL;
  String foodTitle;
  String foodClip1;
  String foodClip2;
  String price;
  Color softClip1;
  Color deepClip1;
  Color softClip2;
  Color deepClip2;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
        margin: EdgeInsets.only(bottom: 15),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            color: FULL_WHITE,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 7,
                blurRadius: 10,
                offset: Offset(0, 14),
              )
            ]),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(imageURL), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20)),
              width: 85,
              height: 85,
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.56,
                margin: const EdgeInsets.only(left: 13),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      foodTitle,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.5,
                          letterSpacing: 0.3,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: softClip1,
                              borderRadius: BorderRadius.circular(6)),
                          width: 70,
                          height: 28,
                          child: Center(
                            child: Text(
                              foodClip1,
                              style: TextStyle(color: deepClip1),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: softClip2,
                              borderRadius: BorderRadius.circular(6)),
                          margin: EdgeInsets.only(left: 5),
                          width: 70,
                          height: 28,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Center(
                              child: Text(
                                foodClip2,
                                style: TextStyle(color: deepClip2),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 6),
                      child: Row(
                        children: [
                          Text("Warung buyakuk",
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w600)),
                          Spacer(),
                          Text(
                            "Rp. $price",
                            style: TextStyle(
                                letterSpacing: 0.2,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
