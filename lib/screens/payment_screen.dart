import 'package:casino/screens/first.dart';
import 'package:casino/screens/second.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
final String  selectedNumbers;
  Payment({ required this.selectedNumbers});
  static const String id = 'Payment';


  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {


  int time = 0200, possibleWin = 275000;//The time displayed on the top of the page
  int firstSelected = 0, secondSelected = 0, thirdSelected = 0, fourthSelected = 0, fifthSelected = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.indigo[900],
      appBar: AppBar(
        leading: IconButton(icon:const Icon(Icons.arrow_back_ios),onPressed: (){
          Navigator.pop(context);

        },),
        backgroundColor: Colors.indigo[900],
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
                fontSize: 20.0,
              ),
            ),
              margin: const EdgeInsets.only(top: 25.0),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 38.0),
              padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 10.0),
              height: 350.0,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(28.0)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  const Text('Selected Numbers',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Container(child: Text(
                    // '$firstSelected, $secondSelected, $thirdSelected, $fourthSelected, $fifthSelected',
                    widget.selectedNumbers,
                    style: const TextStyle(fontSize: 24.0),
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
                          child: const Center(child: Text('1',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                            ),
                          )),
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          height: 40.0,
                          width: 40.0,
                        ),
                        const SizedBox(width: 16.0,),
                        Container(
                          child: const Center(child: Text('2',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                            ),
                          )),
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
                  Container(child: Text('R1 $possibleWin',
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
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>First()));

              },
              child: const Text('Pay Now',
                style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 20.0,
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