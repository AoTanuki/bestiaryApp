import 'package:flutter/material.dart';

class MonsterDetails extends StatelessWidget{

  String monsterName = 'Empty';
  String monsterLevel = '0';
  String monsterDetails = 'Empty';
  String monsterImage = 'assets/img/monster1.png';

  MonsterDetails(this.monsterName,this.monsterLevel,this.monsterImage,this.monsterDetails);

  @override
  Widget build(BuildContext context) {

    final image = Container(
      margin: EdgeInsets.only(
        left: 5.0,
        top: 10.0,
        bottom: 10.0,
        right: 10.0,
      ),
      width: 70.0,
      height: 70.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(monsterImage),
            fit: BoxFit.fitHeight
        ),
        shape: BoxShape.circle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(1.0, 1.0),
            color: Colors.black,
            blurRadius: 5.0,
          )
        ]
      ),
    );

    final details = Container(
      alignment: Alignment.center,
      height: 100,
      margin: EdgeInsets.only(
        top: 10.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              bottom: 10,
            ),
            child: Text(
              monsterName,
              style: TextStyle(
                fontSize: 25,
                fontFamily: "Permanent Marker",
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            "level: $monsterLevel",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );

    final button = Container(
      width: 40,
      height: 40,
      margin: EdgeInsets.only(
        left: 90.0,
      ),
      child: InkWell(
        onTap: (){
          Scaffold.of(context).showSnackBar(SnackBar(content: Text("This button will show more information about this monster")));
        },
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/img/iconNext.png"),
          fit: BoxFit.fill
        ),
        shape: BoxShape.circle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(0.0, 0.0),
            color: Color.fromRGBO(255, 255, 204, 0.5),
            blurRadius: 5.0
          )
        ]
      ),
    );

    return Container(
      width: 350.0,
      height: 100.0,
      margin: EdgeInsets.only(
        top: 30.0,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(40),
        image: DecorationImage(
            image: AssetImage("assets/img/backgroundImage.jpg"),
            fit: BoxFit.fill
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Color.fromRGBO(102, 51, 0, 1),
            offset: Offset(3.0, 4.0),
            blurRadius: 5.0,
          )
        ]
      ),
      child: Row(
        children: <Widget>[
          image,
          details,
          button
        ],
      ),
    );
  }
}