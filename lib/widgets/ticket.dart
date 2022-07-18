import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Ticket extends StatefulWidget {

  final int validDraws;


  Ticket(
      {Key? key,
      required this.validDraws})
      : super(key: key);

  @override
  State<Ticket> createState() => _TicketState();
}

class _TicketState extends State<Ticket> {
  String ticketsId ='';
  String qrCodeData= '';
  @override
  void initState() {
    super.initState();
    getQrCode();
    getTicketId();
    getRandomString(12);


    }
  String getQrCode(){
    Random random = Random();
    String number = '';
    for(int i = 0; i < 10; i++){
      number = number + random.nextInt(9).toString();
      qrCodeData=number;
    }
    return number;
  }

  String getTicketId(){
    Random random = Random();
    String ticketId = '';
    for(int i = 0; i < 12; i++){
      ticketId = ticketId + random.nextInt(9).toString();
      ticketsId=ticketId;
    }
    return ticketId;
  }
  var _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  Random _rnd = Random();

  String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height*0.18,
      width: width*0.88,
      child: Stack(
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
                QrImage(
                  data: qrCodeData,
                  version: QrVersions.auto,
                  size: 70.0,
                ),
                const SizedBox(
                  width: 3,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Ticket ID: $ticketsId#'),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text('R10',
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
                                  const Text(
                                    'Draws',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(DateTime.now().toString().substring(0,10), style: const TextStyle(color: Colors.grey))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Text('Valid for ${widget.validDraws} draw',
                          style: const TextStyle(color: Colors.orange))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
