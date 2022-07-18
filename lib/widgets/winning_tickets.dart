import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WinningTickets extends StatelessWidget {
  String ticketId1;
  String ticketId2;
  String ticketId3;

  WinningTickets({Key? key, required this.ticketId1, required this.ticketId2, required this.ticketId3,}) : super(key: key);

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
            height: 25,
            width: 120,
            child: Stack(
              children: [
                SvgPicture.asset(
                  'assets/icons/ticket_container.svg',
                  fit: BoxFit.cover,
                  width: 120,

                ),
                Center(child: Text('Ticket ID:$ticketId1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9),))
              ],
            ),
          ),
          Container(
            height: 25,
            width: 120,
            child: Stack(
              children: [
                SvgPicture.asset(
                  'assets/icons/ticket_container.svg',
                  fit: BoxFit.cover,
                  width: 120,


                ),
                Center(child: Text('Ticket ID:$ticketId2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9),))
              ],
            ),
          ),
          Container(
            height: 25,
            width: 120,
            child: Stack(
              children: [
                SvgPicture.asset(
                  'assets/icons/ticket_container.svg',
                  fit: BoxFit.cover,
                  width: 120,
                ),
                Center(child: Text('Ticket ID:$ticketId3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9),))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
