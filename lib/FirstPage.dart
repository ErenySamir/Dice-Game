import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Text(
        'Happy New Year Ereny ^-^',
        style: TextStyle(
          fontSize: 20, // adjust the font size as needed
          fontWeight: FontWeight.bold, // set the font weight
          fontStyle: FontStyle.italic, // set the font style
          color: Colors.white, // set the font color
          fontFamily: 'Arial', // set the font family
        ),
      ),
    );
    //return SafeArea(child: Text('New Year 2024'));
   // return Image.asset('assets/images/imag.jpg');
  }

}