import 'package:flutter/material.dart';
import 'app_bar_widget.dart';
import 'body_widget.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game bestiary app',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: PreferredSize(child: AppBarWidget("Bestiary","assets/img/backgroundImage.jpg"), preferredSize: Size(100, 100)),
        body: BodyWidget("assets/img/bodyBackgroundImage.jpg"),
      )
    );
  }
}




