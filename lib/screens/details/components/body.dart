import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plantapp_140/constants.dart';

import 'icon_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        SizedBox(
          height: size.height * 0.8,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                  child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                       icon: SvgPicture.asset("assets\icons\backarrow.svg"),
                       onPressed: () {
                        Navigator.pop(context);
                       },
                       ),
                    ),
                    Spacer(),
                    IconCard(icon: "assets\icons\matahari.svg"),
                    IconCard(icon: "assets\icons\humidity.svg"),
                    IconCard(icon: "assets\icons\water.svg"),
                    IconCard(icon: "assets\icons\wind.svg"),
                   ],
                  ),
                ),
              ),
              Container(height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63)
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.29),
                  ),
                ],
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage("assets\images\cactus.jpg"),
              ),
              ),
              ),
            ],
          ),
        )
      ],
    );
  }
}