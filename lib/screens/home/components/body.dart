import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plantapp_140/constants.dart';
import 'package:plantapp_140/screens/home/components/header_with_searchboy.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recomended", 
            press: (){},
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

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    super.key, 
    required this.title, 
    required this.press,
  });
  final String title;
  final String press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text("Recomended",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7, 
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}