import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  static const String id = 'Payment';

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {

  int time = 0200;//The time displayed on the top of the page
  int firstSelected = 0, secondSelect = 0, thirdSelected = 0, fourthSelected = 0, fifthSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0.0,
        title: const Text('Payment'),
        titleTextStyle: const TextStyle(
          fontSize: 17.0,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(child: Text('$time',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
              margin: const EdgeInsets.only(top: 25.0),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 38.0),
              padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 10.0),
              height: 340.0,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(28.0)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  const Text('Selected Numbers',
                  style: TextStyle(fontSize: 18.0),
                  ),
                  Container(child: Text('$firstSelected, $secondSelect, $thirdSelected, $fourthSelected, $fifthSelected',
                    style: const TextStyle(fontSize: 18.0),
                  ),
                    margin: const EdgeInsets.only(bottom: 30.0, top: 12.0),
                  ),  //display selected numbers here
                  const Text('Number Of Draws',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Center(child: Text('1')),
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          height: 40.0,
                          width: 40.0,
                        ),
                        SizedBox(width: 16.0,),
                        Container(
                          child: Center(child: Text('2')),
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          height: 40.0,
                          width: 40.0,
                        ),
                      ],
                    ),
                  ),
                  const Text('Possible Win',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Container(child: Text('R1 $time',
                    style: const TextStyle(fontSize: 18.0),
                  ),
                    margin: const EdgeInsets.only(top: 8.0),
                  )
                ],
              ),
            ),
            Container(child: const Text('Total : R20',
              style: TextStyle(color: Colors.white,
                fontSize: 16.0,
              ),
            ),
              margin: const EdgeInsets.only(bottom: 20.0),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Pay Now',
                style: TextStyle(
                  color: Colors.indigo,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                minimumSize: const Size(240.0, 48.0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
              ),
            )
          ],
        ),
      ),
    );
  }
}
