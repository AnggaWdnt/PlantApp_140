import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:plantapp_140/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        HeaderWithSearchBox(size: size)
      ],
    );
  }
}

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    super.key,
    required this.size,
  });

  final  size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding,
        bottom: 36 + kDefaultPadding,
      ),
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget> [
                Text('HI Iscopy!', style: Theme.of(context).textTheme.headline5.copyWith(
                  color: Colors.white, FontWeight.bold),
                ),
                Spacer(),
                Image.asset("assets\images\logoplant.jpg")
                ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:BorderRadius.circular(20),
                boxShadow: [BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0.23),
                ),
                ],
              ),
              child: Row(
                children: <Widget> [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),    
                       ),
                       enabledBorder: InputBorder.none,
                       focusedBorder: InputBorder.none, 
                       suffixIcon:
                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/icons/search.svg")
                ],
              ),
            ),
            ),
        ],
      ),
    );
  }
}