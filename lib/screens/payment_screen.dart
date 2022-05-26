import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  static const String id = 'Payment';

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {

  int time = 0200, possibleWin = 275000;//The time displayed on the top of the page
  int firstSelected = 0, secondSelected = 0, thirdSelected = 0, fourthSelected = 0, fifthSelected = 0;

  @override
  Widget build(BuildContext context) {

    //Today's findings is that :
        //removing the scaffold from the pages we are linking into the bottom nav solves the overflow errors
        //problems encountered
          //How to implement appbars for the specific screens
          //How to give the screens background since we removed the scaffold
          //how to move back the navigation without exiting the application
        //wins
          //managed to make it work... yeei
    return SafeArea(
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
                Container(child: Text('$firstSelected, $secondSelected, $thirdSelected, $fourthSelected, $fifthSelected',
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
              Navigator.push(context, CupertinoPageRoute(builder: (context) => Test()));
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
    );
    // return Scaffold(
    //   backgroundColor: Colors.deepPurple,
    //   appBar: AppBar(
    //     backgroundColor: Colors.deepPurple,
    //     elevation: 0.0,
    //     title: const Text('Payment'),
    //     titleTextStyle: const TextStyle(
    //       fontSize: 17.0,
    //     ),
    //   ),
    //   body: SafeArea(
    //     child: Column(
    //       children: [
    //         Container(child: Text('$time',
    //           style: const TextStyle(
    //             color: Colors.white,
    //             fontSize: 20.0,
    //           ),
    //         ),
    //           margin: const EdgeInsets.only(top: 25.0),
    //         ),
    //         Container(
    //           margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 38.0),
    //           padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 10.0),
    //           height: 350.0,
    //           decoration: const BoxDecoration(
    //             borderRadius: BorderRadius.all(Radius.circular(28.0)),
    //             color: Colors.white,
    //           ),
    //           child: Column(
    //             children: [
    //               const Text('Selected Numbers',
    //               style: TextStyle(fontSize: 18.0),
    //               ),
    //               Container(child: Text('$firstSelected, $secondSelected, $thirdSelected, $fourthSelected, $fifthSelected',
    //                 style: const TextStyle(fontSize: 24.0),
    //               ),
    //                 margin: const EdgeInsets.only(bottom: 30.0, top: 12.0),
    //               ),  //display selected numbers here
    //               const Text('Number Of Draws',
    //                 style: TextStyle(fontSize: 18.0),
    //               ),
    //               Container(
    //                 margin: const EdgeInsets.symmetric(vertical: 30.0),
    //                 child: Row(
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   children: [
    //                     Container(
    //                       child: const Center(child: Text('1',
    //                         style: TextStyle(
    //                           color: Colors.white,
    //                           fontSize: 18.0,
    //                         ),
    //                       )),
    //                       decoration: BoxDecoration(
    //                         color: Colors.indigo,
    //                         borderRadius: BorderRadius.circular(8.0),
    //                       ),
    //                       height: 40.0,
    //                       width: 40.0,
    //                     ),
    //                     const SizedBox(width: 16.0,),
    //                     Container(
    //                       child: const Center(child: Text('2',
    //                         style: TextStyle(
    //                           color: Colors.white,
    //                           fontSize: 18.0,
    //                         ),
    //                       )),
    //                       decoration: BoxDecoration(
    //                         color: Colors.indigo,
    //                         borderRadius: BorderRadius.circular(8.0),
    //                       ),
    //                       height: 40.0,
    //                       width: 40.0,
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //               const Text('Possible Win',
    //                 style: TextStyle(fontSize: 18.0),
    //               ),
    //               Container(child: Text('R1 $possibleWin',
    //                 style: const TextStyle(fontSize: 18.0),
    //               ),
    //                 margin: const EdgeInsets.only(top: 8.0),
    //               )
    //             ],
    //           ),
    //         ),
    //         Container(child: const Text('Total : R20',
    //           style: TextStyle(color: Colors.white,
    //             fontSize: 16.0,
    //           ),
    //         ),
    //           margin: const EdgeInsets.only(bottom: 20.0),
    //         ),
    //         ElevatedButton(
    //           onPressed: () {
    //             Navigator.push(context, CupertinoPageRoute(builder: (context) => Test()));
    //           },
    //           child: const Text('Pay Now',
    //             style: TextStyle(
    //               color: Colors.indigo,
    //               fontSize: 20.0,
    //             ),
    //           ),
    //           style: ElevatedButton.styleFrom(
    //             primary: Colors.white,
    //             minimumSize: const Size(240.0, 48.0),
    //             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // ); old code

  }
}





//.................................................................................................
class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white10,
      ),
      child: Center(
        child: Text("Wewe i am working"),
      ),
    );
  }
}

