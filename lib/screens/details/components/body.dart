import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plantapp_140/constants.dart';

import 'icon_card.dart';
import 'image_and_icon.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcon(size: size),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              children: <Widget>[
               RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Cactus\n", 
                      style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(
                        color: kTextColor,
                        fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: "Amerika", 
                          style: TextStyle(
                            fontSize: 20, 
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w300,
                        ),
                      ),
                  ],
                ),
                ),
                Spacer(),
                Text("\Rp25000", 
                style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: kPrimaryColor),
                ),
             ],
            ),
          )
        ],
      ),
    );
  }
}

