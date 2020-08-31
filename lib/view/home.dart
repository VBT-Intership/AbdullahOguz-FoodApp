import 'package:flutter/material.dart';
import 'package:food_app/utils/color.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:food_app/utils/color.dart';
import 'package:food_app/widgets/horizontal_food_card.dart';
import 'package:food_app/widgets/vertical_food_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var imageList = [
      "https://www.theflavorbender.com/wp-content/uploads/2014/09/Simpsons-Doughnuts-4238-Copy-1.jpg",
      "https://m.buro247.sg/images/lifestyle/ice-cream-cover.jpg.jpg",
      "https://pbs.twimg.com/media/DrjlDZnX0AAK8xJ.jpg"
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        backgroundColor: WHITE_GRAY,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Container(
        color: WHITE_GRAY,
        child: Column(
          children: [
            searhArea(),
            horizontalListArea(context),
            popularCard(),
            verticalListArea(context)
          ],
        ),
      ),
    );
  }

  Container verticalListArea(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.446,
      child: Padding(
        padding: EdgeInsets.only(top: 20, left: 30, right: 30),
        child: ListView(
          children: [
            VerticalFoodCard(
                "https://pbs.twimg.com/media/DrjlDZnX0AAK8xJ.jpg",
                "Banana Goreng",
                "Gorengan",
                "Makanan Ringan",
                "2.500",
                SOFT_YELLOW,
                DARK_YELLOW,
                SOFT_BLUE,
                DARK_BLUE),
            VerticalFoodCard(
                "https://www.hazz.com.tr/Uploads/UrunResimleri/buyuk/karisik-makaron-kutusu-no1-81-adet-------cfe1.jpg",
                "Donat Cilik",
                "Gorengan",
                "Donat",
                "12.000",
                SOFT_YELLOW,
                DARK_YELLOW,
                SOFT_RED,
                DARK_RED),
            VerticalFoodCard(
                "https://envato-shoebox-0.imgix.net/b576/fcd3-dd40-428f-aa6e-7103ca61e8e4/1103+%2829%29.jpg?auto=compress%2Cformat&fit=max&mark=https%3A%2F%2Felements-assets.envato.com%2Fstatic%2Fwatermark2.png&markalign=center%2Cmiddle&markalpha=18&w=1600&s=5576d998ec46e50de8fe73c47844f0ad",
                "Copy anget",
                "Ombehan",
                "Ber air",
                "4.500",
                SOFT_GREEN,
                DARK_GREEN,
                SOFT_BLUE,
                DARK_BLUE)
          ],
        ),
      ),
    );
  }

  Container popularCard() {
    return Container(
      padding: EdgeInsets.only(left: 23, top: 30),
      child: ListTile(
        leading: Container(
          decoration:
              BoxDecoration(color: RED, borderRadius: BorderRadius.circular(9)),
          width: 50,
          height: 50,
          child: Icon(
            MaterialCommunityIcons.heart,
            size: 28,
            color: Colors.white,
          ),
        ),
        title: Text("Popular",
            style: TextStyle(
                fontSize: 18, letterSpacing: 0.2, fontWeight: FontWeight.w600)),
        subtitle: Text("Monggo,entekno duwekmu!",
            style: TextStyle(fontSize: 14, letterSpacing: 0.3)),
        trailing: IconButton(
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.black,
            ),
            onPressed: () {}),
      ),
    );
  }

  Container horizontalListArea(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: FULL_WHITE, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.1),
          spreadRadius: 7,
          blurRadius: 10,
          offset: Offset(0, 14), // changes position of shadow
        ),
      ]),
      margin: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.219,
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            HorizontalFoodCard(
                "https://www.theflavorbender.com/wp-content/uploads/2014/09/Simpsons-Doughnuts-4238-Copy-1.jpg",
                12,
                "Sweet"),
            HorizontalFoodCard(
                "https://m.buro247.sg/images/lifestyle/ice-cream-cover.jpg.jpg",
                42,
                "Beverages"),
            HorizontalFoodCard(
                "https://pbs.twimg.com/media/DrjlDZnX0AAK8xJ.jpg", 25, "Banana")
          ],
        ),
      ),
    );
  }

  Padding searhArea() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 30),
      child: Row(
        children: [
          Text(
            "What do you want\n to eat today?",
            style: TextStyle(
                fontSize: 28, letterSpacing: 1.2, fontWeight: FontWeight.w900),
          ),
          Spacer(),
          Container(
            decoration: BoxDecoration(
                color: FULL_WHITE,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0.01,
                    blurRadius: 40,
                    offset: Offset(0, 0.1), // changes position of shadow
                  ),
                ]),
            margin: EdgeInsets.only(right: 30),
            width: 45,
            height: 45,
            child: Icon(AntDesign.search1),
          ),
        ],
      ),
    );
  }
}
