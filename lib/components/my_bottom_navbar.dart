import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class MyBottomNavbar extends StatelessWidget {
  const MyBottomNavbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
      left: kDefaultPadding * 2, 
      right: kDefaultPadding * 2,
      bottom: kDefaultPadding,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
      boxShadow: [
        BoxShadow(
          offset: Offset(0, -10),
          blurRadius: 35,
          color: kPrimaryColor.withOpacity(0.38),
        ),
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      IconButton(
      icon: SvgPicture.asset("assets\icons\flower.svg"), 
      onPressed: (){},
      ),
      IconButton(
      icon: SvgPicture.asset("assets\icons\heart.svg"), 
      onPressed: (){},
      ),
      IconButton(
      icon: SvgPicture.asset("assets\icons\user.svg"), 
      onPressed: (){},
      ),
      ],
    ),
    );
  }
}