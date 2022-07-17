import 'package:casino/constants/colors.dart';
import 'package:casino/screens/confirmation_screen.dart';
import 'package:casino/widgets/card_view.dart';
import 'package:casino/widgets/settings_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
       backgroundColor: scaffoldColor,

      appBar: AppBar(
        backgroundColor: scaffoldColor,
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios),onPressed: (){
          Navigator.pop(context);

        },),
        elevation: 0,
        title:const Text('Payment',style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        height: height,
        padding:const EdgeInsets.only(left: 10,top: 10,right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20,left: 10,bottom: 10),
              child:const Text('Your Cards',style: TextStyle(color: Colors.white,
                fontSize: 22
              ),),
            ),
            Container(
              margin:const EdgeInsets.only(bottom: 15),
              padding:const EdgeInsets.only(top: 20,left: 10,bottom: 10),
              child:const Text('2 Physical Card, 1 Virtual Wallet',style: TextStyle(color: Colors.white, fontSize: 16),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin:const EdgeInsets.only(left: 10,bottom: 20),
                  width: 120,
                  padding:const EdgeInsets.only(left: 5,bottom: 10,top: 10),
                  decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadiusDirectional.circular(8)),
                  child:const Center(child: Text('Physical Card',style: TextStyle(color: Colors.white),)),
                ),
                Container(
                  margin:const EdgeInsets.only(bottom: 20,left: 7),
                  padding:const EdgeInsets.only(left: 5,bottom: 10,top: 10),
                  child:const Text('Virtual Card',style: TextStyle(color: Colors.white),),
                ),

              ],
            ),
            const CardView(),
            Container(
              padding: const EdgeInsets.only(top: 10,left: 10,bottom: 10),
              child:const Text('Card Settings',style: TextStyle(color: Colors.white),),
            ),

            const SetItem(iconSet: Icon(Icons.credit_card_outlined,color: Colors.white,), headline: 'Debit Card Payment'),
           const  SizedBox(height: 5,),
            const SetItem(iconSet: Icon(Icons.wallet_giftcard_rounded,color: Colors.white), headline: 'Virtual Wallet Payment'),
            const SizedBox(height: 5,),
            const SetItem(iconSet: Icon(Icons.settings_outlined,color: Colors.white), headline: 'Subscription'),

           const SizedBox(height: 35,),
            Align(
              alignment: Alignment.center,
                child: InkWell(
                  onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>ConfirmationScreen())),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text('Proceed',style: TextStyle(color: Colors.indigo, fontSize: 20.0, fontWeight: FontWeight.w600),),
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
