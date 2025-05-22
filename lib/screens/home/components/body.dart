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
            title: "Recomended", press: (){}),
            Container(
              width: size.width * 0.4,
              child: Column(
                children: <Widget>[
                  Image.asset("assets\images\cactus.jpg"),
                  Container(
                    margin: EdgeInsets.only(left: kDefaultPadding, top: kDefaultPadding / 2,
                    bottom: kDefaultPadding * 2.5,
                    ),
                    padding: EdgeInsets.all(kDefaultPadding / 2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: kPrimaryColor.withOpacity(0.23)
                          ),
                        ],
                     ),
                     child: Row(
                      children: <Widget>[
                        RichText(text: TextSpan(children: [],
                        ),
                        ),
                      ],
                     ),
                   )
                 ]
               ),
              ),
            child: 
            Row(
            children: <Widget>[
              TitleWithCustomUnderline(text: Title),
              Spacer(),
              FloatingActionButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                ),
                color: kPrimaryColor,
                onPressed: press,
                child: Text(
                  "More", 
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}