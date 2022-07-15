import 'package:flutter/material.dart';

class PLayDraw extends StatelessWidget {
  const PLayDraw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Container(
      height: 180,
      margin: EdgeInsets.all(8),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            height: 100,
            width: width *0.33,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent
            ),
            child: Column(
              children: [
                Container(
                  height: 60,
                  padding: const EdgeInsets.all(8),
                  color: Colors.red,
                ),
                Text('R78 Million Win \n BTC',style: TextStyle(fontWeight: FontWeight.bold),),
                ElevatedButton(onPressed: (){}, child: Text('Play now',style: TextStyle(color: Colors.white))),
                Text('Next Draw',style: TextStyle(color: Colors.grey),),
                Text('8:25:43:12',style: TextStyle(fontWeight: FontWeight.bold),),

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            height: 100,
            width: width *0.33,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent
            ),
            child: Column(
              children: [
                Container(
                  height: 60,
                  padding: const EdgeInsets.all(8),
                  color: Colors.red,
                ),
                Text('R78 Million Win \n BTC',style: TextStyle(fontWeight: FontWeight.bold),),
                ElevatedButton(onPressed: (){}, child: Text('Play now',style: TextStyle(color: Colors.white))),
                Text('Next Draw',style: TextStyle(color: Colors.grey),),
                Text('8:25:43:12',style: TextStyle(fontWeight: FontWeight.bold),),

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            height: 100,
            width: width *0.33,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent
            ),
            child: Column(
              children: [
                Container(
                  height: 60,
                  padding: const EdgeInsets.all(8),
                  color: Colors.red,
                ),
                Text('R78 Million Win \n BTC',style: TextStyle(fontWeight: FontWeight.bold),),
                ElevatedButton(onPressed: (){}, child: Text('Play now',style: TextStyle(color: Colors.white))),
                Text('Next Draw',style: TextStyle(color: Colors.grey),),
                Text('8:25:43:12',style: TextStyle(fontWeight: FontWeight.bold),),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
