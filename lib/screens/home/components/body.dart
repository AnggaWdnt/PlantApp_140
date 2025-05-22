import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plantapp_140/constants.dart';
import 'package:plantapp_140/screens/home/components/header_with_searchboy.dart';

import 'title_with_more_bttn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recommended",
            press: () {},
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                RecomendPlantCard(
                  image: 'assets\images\cactus.jpg', 
                  title: 'Cactus', 
                  country: 'Amerika', 
                  price: 25000, 
                  press: () {},
                ),
                RecomendPlantCard(
                  image: 'assets\images\cactus.jpg', 
                  title: 'Cactus', 
                  country: 'Amerika', 
                  price: 25000, 
                  press: () {},
                ),
                RecomendPlantCard(
                  image: 'assets\images\cactus.jpg', 
                  title: 'Cactus', 
                  country: 'Amerika', 
                  price: 25000, 
                  press: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    super.key, required this.image, required this.title, required this.country, required this.price, required this.press,
  });

  final String image, title, country;
  final int price;
  final Function press;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding,
        bottom: kDefaultPadding * 2.5,
      ),
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.labelLarge, 
                        ),
                        TextSpan(
                          text: "$country",
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Rp$price',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge
                        ?.copyWith(color: kPrimaryColor), 
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
