import 'package:flutter/material.dart';

class Ticket extends StatelessWidget {
  const Ticket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(top: 25),
      height: 80,
      decoration:const BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white,
        border: Border(
          bottom: BorderSide(style: BorderStyle.solid,color: Colors.orange),
          top: BorderSide(style: BorderStyle.solid,color: Colors.orange),
          left: BorderSide(style: BorderStyle.solid,color: Colors.orange),
          right: BorderSide(style: BorderStyle.solid,color: Colors.orange),
        ),

      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(8),
            height: 75,
            width: 75,
            color: Colors.black,
          ),
          SizedBox(width: 3,),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Ticket ID: 32FGK2001F9#'),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('R10',style: TextStyle(color: Colors.orange,fontSize: 25)),
                      SizedBox(width: width *0.26,),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Draws',style: TextStyle(color: Colors.grey),),
                            Text('21 OCT 2021',style: TextStyle(color: Colors.grey))
                          ],
                        ),
                      )


                    ],
                  ),
                ),
                Text('Valid for 1 draw',style: TextStyle(color: Colors.orange))
              ],
            ),
          ),

        ],
      ),
    );
  }
}
