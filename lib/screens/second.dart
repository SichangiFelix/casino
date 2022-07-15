import 'package:casino/screens/first.dart';
import 'package:casino/screens/home.dart';
import 'package:casino/screens/third.dart';
import 'package:casino/widgets/ticket.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../widgets/button.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DateTime time =DateTime.now() ;
    var width =MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      appBar:  AppBar(
        backgroundColor: Colors.indigo[900],
        leading: IconButton(icon:const Icon(Icons.arrow_back_ios),onPressed: (){
          Navigator.pop(context);

        },),
        elevation: 0,
        title: Text('Payment',style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40),
              child: const Center(child: Text('2.00 PM',style: TextStyle(color: Colors.white),)),
            ),
            Container(
              height: height*0.60,
              width: width*0.9,
              margin: const EdgeInsets.all(10),
              padding:const EdgeInsets.only(top: 25,left: 10,right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.thumb_up,size: 40,),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10,bottom: 10),
                      child:const Text('Confirmation',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 30),)),
                  Container(child: Text('You have successfully \nPurchased your tickets',style: TextStyle(color: Colors.grey),)),

                 const Ticket(),
                 const  Ticket(),
                ],
              ),
            ),
            const SizedBox(height: 30,),

            Align(

                alignment: Alignment.center,
                child: InkWell(
              onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>Home())),
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text('Back To Home',style: TextStyle(color: Colors.indigo),),
                ),
              ),
            )
            )

          ],
        ),
      ),
    );
  }
}
