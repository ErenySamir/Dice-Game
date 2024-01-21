import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//هنا ده بعمله عشان يبقي stateful ويتعيير مع كل دوسه
class Dice extends StatefulWidget{
  @override
  State<Dice> createState() {
return DiceState();
  }

}
// ده بس بيورث منState<Dice>  وبينظم دنبا فالكتابه بس
class DiceState extends State<Dice>{
  int clickImageRight=1;
  int clickImageLeft=1;

  // function عشام احط فيها بدل ما اكتب السطريين في كل مره
changeDice(){
  clickImageRight=Random().nextInt(6)+1;
  clickImageLeft=Random().nextInt(6)+1;
}
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.blueAccent,
      body: Center(
      child: Row(
        children: [
          Expanded(
           // flex:3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),

                //InkWell ده عشان لما ادوس علي الصوره تبقي بتكلك
                child:InkWell(child: Image.asset('assets/images/dice${clickImageLeft}.png'),
                onTap: (){
                  print('ImageClicked $clickImageLeft');

                  changeDice();

                 // clickImageLeft=Random().nextInt(6)+1;
                  // setState ده عشان تعييد lifecycle
                  setState(() {});
                  print('ImageClicked $clickImageLeft');

                },)
              )),

          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child:GestureDetector(child: Image.asset('assets/images/dice${clickImageRight}.png'),
                onTap: (){
//بنده function بدل ما اكتب تنظيم مش اكتر
                  changeDice();

                  // clickImageRight=Random().nextInt(6)+1;
                  // clickImageLeft=Random().nextInt(6)+1;

                  // setState ده عشان تعييد lifecycle
                  setState(() {});
                  print('ImageClicked $clickImageRight');
                },
                )
              ))
        ],

      ),

    ) ,);
  }

}