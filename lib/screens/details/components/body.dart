import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plantapp_140/constants.dart';

import 'icon_card.dart';
import 'image_and_icon.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcon(size: size),
          TitleAndPrice(
            title: 'Cactus', 
            country: 'Amerika', 
            price: 25000
            ),
            SizedBox(
              height: kDefaultPadding
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: size.width / 2,
                  height: 84,
                  child: FloatingActionButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                    ),
                    ),
                    color: kPrimaryColor,
                    onPressed: (){},
                    child: Text("Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    ),
                    ),
                ),
                Expanded(
                  child: FloatingActionButton(
                    onPressed: (){},
                    child: Text("Descripsion"),
                ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}