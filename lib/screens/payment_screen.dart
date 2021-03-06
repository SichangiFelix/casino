import 'package:casino/constants/colors.dart';
import 'package:casino/screens/payment_method_screen.dart';
import 'package:casino/screens/confirmation_screen.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
final String  selectedNumbers;
  PaymentScreen({ required this.selectedNumbers});
  static const String id = 'Payment';


  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {


  int time = 0200, possibleWin = 275000;//The time displayed on the top of the page
  int firstSelected = 0, secondSelected = 0, thirdSelected = 0, fourthSelected = 0, fifthSelected = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: AppBar(
        leading: IconButton(icon:const Icon(Icons.arrow_back_ios),onPressed: (){
          Navigator.pop(context);

        },),
        backgroundColor: scaffoldColor,
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
              height: MediaQuery.of(context).size.height/2.1,
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
                    margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height/40, top: MediaQuery.of(context).size.height/60),
                  ),  //display selected numbers here
                  const Text('Number Of Draws',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height/40),
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
              margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height/20),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentMethodScreen()));

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