import 'package:casino/constants/colors.dart';
import 'package:casino/screens/payment_method_screen.dart';
import 'package:casino/screens/home.dart';
import 'package:casino/screens/choose_number_screen.dart';
import 'package:casino/widgets/ticket.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/button.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DateTime time = DateTime.now();
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: AppBar(
        backgroundColor: scaffoldColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        title: Text(
          'Payment',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40),
              child: const Center(
                  child: Text(
                '2.00 PM',
                style: TextStyle(color: Colors.white,
                  fontSize: 22,
                ),
              )),
            ),
            Container(
              height: height * 0.60,
              width: width * 0.9,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/like.svg',
                    width: 100,
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      child: const Text(
                        'Confirmation',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 30),
                      )),
                  const Text(
                    'You have successfully \nPurchased your tickets',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Ticket(ticketId: '32FGK2001F9#', date: '21 OCT 2021', validDraws: 1,),
                  Ticket(ticketId: '32FGK33001G3#', date: '04 NOV 2021', validDraws: 1,),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () => Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home())),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'Back To Home',
                        style: TextStyle(color: Colors.indigo,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
