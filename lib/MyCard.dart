import 'package:flutter/material.dart';

class MyCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: Scaffold(

      backgroundColor: Colors.indigo,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage('https://images.rawpixel.com/image_png_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTA4L3Jhd3BpeGVsb2ZmaWNlNV9kcmVhbXlfY2hlcnViX3dpdGhfY2xvdWRfaXNvbGF0ZWRfb25fd2hpdGVfYmFja19mMWZhMGFhZS0wMzllLTRlMjktYmU1OS0yYTA1MGZhNWZhMDlfMS5wbmc.png'),
          ),
          SizedBox(height:20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Happy New Year ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20, // adjust the font size as needed
                fontWeight: FontWeight.w100,
                  fontFamily: 'pacifico')
            ),
          ),
          SizedBox(width: 120 ,
            child: Divider(
              //height: 1,
                color: Colors.white .withOpacity(.5),thickness: 2,
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(5),
            color: Colors.white,
            child:
            Row(
              children: [
                Icon(Icons.phone ,size: 20,color: Colors.black,),
                SizedBox(width:20),
                Text("+201025610549")

              ],
            ),
          ),

//ده انا بيظبط الحدود بتاعه المربع وبيخليها round
// Card(
//   child:             Row(
//     children: [
//       Icon(Icons.phone_callback ,size: 20,color: Colors.black,),
//       SizedBox(width:20),
//       Text("+201025610549")
//
//     ],
//   ),
//
// ),

// listtitle جاهزه بكتبها بس وهي بتظبط الشكل والراوند وكله

Card(

  child: ListTile(
    leading: Icon(Icons.mail),
    title: Text("Ereny@gmail.com"),
    subtitle: Text("valid e-mail"),
  ),
),

        ],
      ),
    )
    );
  }

}