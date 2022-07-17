import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Ticket extends StatelessWidget {
  final String ticketId;
  final int validDraws;
  final String date;

  Ticket(
      {Key? key,
      required this.date,
      required this.ticketId,
      required this.validDraws})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        SvgPicture.asset(
          'assets/icons/special_rectangle.svg',
          width: 420,
        ),
        Positioned(
          left: 26,
          top: 20,
          child: Row(
            children: [
              Image(
                width: 60,
                height: 60,
                image: AssetImage('assets/images/qr.png') ,
              ),
              SizedBox(
                width: 3,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Ticket ID: $ticketId'),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('R10',
                              style:
                                  TextStyle(color: Colors.orange, fontSize: 25)),
                          SizedBox(
                            width: width * 0.26,
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Draws',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(date, style: TextStyle(color: Colors.grey))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Text('Valid for $validDraws draw',
                        style: TextStyle(color: Colors.orange))
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
