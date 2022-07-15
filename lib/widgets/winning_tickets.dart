import 'package:flutter/material.dart';

class WinningTickets extends StatelessWidget {
  const WinningTickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return  Container(

      height: 30,
      margin:const EdgeInsets.all(8),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin:const EdgeInsets.only(right: 10),
            height: 25,
            width: 120,
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(style: BorderStyle.solid,color: Colors.amber,),
                bottom: BorderSide(style: BorderStyle.solid,color: Colors.amber,),
                left: BorderSide(style: BorderStyle.solid,color: Colors.amber,),
                right: BorderSide(style: BorderStyle.solid,color: Colors.amber,),
              ),

            ),
            child: const Center(child: Text('Ticket ID:THPLYTREDCGY',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9),)),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            height: 25,
            width: 120,
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(style: BorderStyle.solid,color: Colors.amber,),
                bottom: BorderSide(style: BorderStyle.solid,color: Colors.amber,),
                left: BorderSide(style: BorderStyle.solid,color: Colors.amber,),
                right: BorderSide(style: BorderStyle.solid,color: Colors.amber,),
              ),

            ),
            child:const Center(child: Text('Ticket ID:THPLYTREDCGY',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9),)),
          ),
          Container(
            margin:const EdgeInsets.only(right: 10),
            height: 25,
            width: 120,
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(style: BorderStyle.solid,color: Colors.amber,),
                bottom: BorderSide(style: BorderStyle.solid,color: Colors.amber,),
                left: BorderSide(style: BorderStyle.solid,color: Colors.amber,),
                right: BorderSide(style: BorderStyle.solid,color: Colors.amber,),
              ),

            ),
            child:const Center(child: Text('Ticket ID:THPLYTREDCGY',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9),)),
          )

        ],
      ),
    );
  }
}
