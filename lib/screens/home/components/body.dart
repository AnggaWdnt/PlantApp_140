import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plantapp_140/constants.dart';
import 'package:plantapp_140/screens/home/components/header_with_searchboy.dart';

import 'featured_plants.dart';
import 'recomend_plants.dart';
import 'title_with_more_bttn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recommended",press: () {},),
          RecomendsPlants(),TitleWithMoreBtn(title: "Featured Plants",press: (){}),
            FeaturedPlants(),
            SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}

