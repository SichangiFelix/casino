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
                CircleAvatar(radius: 26,),
                Text('Tumpa Lehae',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),),
                Text('FreeState',style: TextStyle(fontSize:12,color: Colors.grey),)

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
                CircleAvatar(radius: 26,),

                Text('Tumpa Lehae',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),),
                Text('FreeState',style: TextStyle(fontSize:12,color: Colors.grey),)

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
                CircleAvatar(radius: 26,),
                Text('Tumpa Lehae',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),),
                Text('FreeState',style: TextStyle(fontSize:12,color: Colors.grey),)

              ],
            ),
          ),



        ],
      ),
    );
  }
}
