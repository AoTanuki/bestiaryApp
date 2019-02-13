import 'package:flutter/material.dart';
import 'monster_details.dart';
class MonsterList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        MonsterDetails("Daragor", "50", "assets/img/monster1.png", "A awful lord of a evil castle"),
        MonsterDetails("Shadow", "20", "assets/img/monster2.png", "remains of the evil of a person who seeks to sow evil"),
        MonsterDetails("Skeletar", "50", "assets/img/monster3.png", "prince of a kingdom cursed by the curse of the flesh"),
        MonsterDetails("Mogul", "30", "assets/img/monster4.png", "Fierce warriors who love war and all forms of violence"),
        MonsterDetails("Gargol", "40", "assets/img/monster5.png", "stone beings that protect the towers with great treasures"),
      ],
    );
  }
}


