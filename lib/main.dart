import 'package:firstflutterproject/Dice.dart';
import 'package:firstflutterproject/FirstPage.dart';
import 'package:firstflutterproject/MyCard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      //to remove depug للي ع الجنب
      debugShowCheckedModeBanner: false,
      //ده في حاله انا بكتب ويعرض قي main
      // home: Scaffold(backgroundColor: Colors.red,
      //     body: Center(child: Text('Hello Ereny'))),

      //بنده اسم classsاللي عملته ايعرض اللي جواه
      home: Dice(),
    )
  );
}



