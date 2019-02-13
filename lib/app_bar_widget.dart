import 'package:flutter/material.dart';


class AppBarWidget extends StatelessWidget{

  String title = 'empty';
  String backgroundImage = 'assets/img/backgroundImage.jpg';

  AppBarWidget(this.title,this.backgroundImage);

  @override
  Widget build(BuildContext context) {

    //TODO ICON SETTINGS
    final icon = Container(
      child: InkWell(
        child: Icon(
          Icons.menu,
          color: Color.fromRGBO(128, 64, 0, 1),
          size: 35.0,
        ),
        onTap: (){
          Scaffold.of(context).showSnackBar(
            SnackBar(content: Text("next update this feature will do something") )
          );
        },
      ),
      decoration: BoxDecoration(
       boxShadow: <BoxShadow>[
         BoxShadow(
           color: Colors.black,
           offset: Offset(0.0, 1.0),
           blurRadius: 5.0,
         )
       ]
      ),
    );

    //TODO TEXT SETTINGS
    final text = Container(
      margin: EdgeInsets.only(
        left: 50.0
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Permanent Marker',
          fontWeight: FontWeight.w900,
          fontSize: 40.0,
          color: Color.fromRGBO(128, 64, 0, 1),
          shadows: <Shadow>[
            Shadow(
              offset: Offset(0.0, 1.0),
              blurRadius: 3.0,
              color: Color.fromARGB(255, 0, 0, 0),
            ),

          ]
        ),
      ),

    );

    //TODO BACKGROUND SETTINGS
    final backgroundColor = Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backgroundImage),
          fit: BoxFit.fill
        )
      ),
    );

    return Container(
      child: Stack(
        children: <Widget>[
          backgroundColor,
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
              left:20.0,
            ),
            child: Row(
              children: <Widget>[
                icon,
                text
              ],
            ),
          )
        ],
      ),
    );
  }


}