import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LatestWinners extends StatelessWidget {
  const LatestWinners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Container(
      alignment: Alignment.center,
      height: 100,
      margin: EdgeInsets.all(8),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            height: 80,
            width: width *0.25,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent
            ),
            child: Column(
              children: [
                CircleAvatar(radius: 26,
                  child: Image.network('https://i.pinimg.com/736x/db/c2/3a/dbc23aa0d94e95eac90f5eca466b26a9.jpg',fit: BoxFit.cover,width: 30,),),
                Text('Tumpa Lehae',style: TextStyle(fontWeight: FontWeight.bold),),
                Text('FreeState',style: TextStyle(fontSize:15,color: Colors.grey),)

              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 10),
            height: 80,
            width: width *0.25,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent
            ),
            child: Column(
              children: [
                CircleAvatar(radius: 26,
              child: Image.network('https://i.pinimg.com/736x/db/c2/3a/dbc23aa0d94e95eac90f5eca466b26a9.jpg',fit: BoxFit.cover,width: 30,),),

                Text('Tumpa Lehae',style: TextStyle(fontWeight: FontWeight.bold),),
                Text('FreeState',style: TextStyle(fontSize:15,color: Colors.grey),)

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            height: 80,
            width: width *0.25,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent
            ),
            child: Column(
              children: [
                CircleAvatar(radius: 26,
                  child: Image.network('https://i.pinimg.com/736x/db/c2/3a/dbc23aa0d94e95eac90f5eca466b26a9.jpg',fit: BoxFit.cover,width: 30,),),
                Text('Tumpa Lehae',style: TextStyle(fontWeight: FontWeight.bold),),
                Text('FreeState',style: TextStyle(fontSize:15,color: Colors.grey),)

              ],
            ),
          ),



        ],
      ),
    );
  }
}
