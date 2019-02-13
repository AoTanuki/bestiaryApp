import 'package:flutter/material.dart';
import  'monster_list.dart';
class BodyWidget extends StatelessWidget{

  String backGroundImage = "assets/img/bodyBackgroundImage.jpg";

  BodyWidget(this.backGroundImage,);

  @override
  Widget build(BuildContext context) {

    //TODO BACKGROUND SETTINGS
    final background = Container (
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(backGroundImage),
            fit: BoxFit.fill
        )
      ),
    );

    //TODO CONTENT SETTINGS
    final content = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 10.0,
        right: 10.0
      ),
      child: MonsterList()
      );

    return Stack(
        children: <Widget>[
          background,
          content
        ],
    );
  }


}