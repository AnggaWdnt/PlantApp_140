import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plantapp_140/constants.dart';
import 'package:plantapp_140/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: Container(
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
      ),
    );
  }
  

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets\icons\menu.svg"),
        onPressed: () {},
        ),
    );
  }
}