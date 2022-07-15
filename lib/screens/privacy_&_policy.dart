import 'package:flutter/material.dart';

class Privacy extends StatelessWidget {
  const Privacy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios),onPressed: (){
          Navigator.pop(context);
      },),
        title: Text('Privacy & Policy',style: TextStyle(color: Colors.white),),
        elevation: 0,
      ),
      body: Container(
        height: height,
        child: bottomContainer(context),
      )
    );
  }
  Widget bottomContainer(context){
    var width =MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Container(
      alignment: Alignment.bottomCenter,
      height: height*0.6,
      width: width,
      decoration:const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(25),bottom: Radius.zero)
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.only(left: 8,right: 8,top: 10),
            width: width * 0.85,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:const [
                Text('Data Security',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
                SizedBox(height: 15,),
                Text('His re tea but something nana ,I di bona mod di terms and conditions .Ke go dirt sure help gore reprotected le di client tsarina di protected',style: TextStyle(color:Colors.grey),),
              ],
            )

          ),
          Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(left: 8,right: 8,top: 10),
              width: width * 0.85,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:const [
                  Text('Change Mail & Password',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
                  SizedBox(height: 15,),
                  Text('His re tea but something nana ,I di bona mod di terms and conditions .Ke go dirt sure help gore reprotected le di client tsarina di protected',style: TextStyle(color:Colors.grey),),
                ],
              )

          ),
          Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(left: 8,right: 8,top: 10),
              width: width * 0.85,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:const [
                  Text('Lottery Draw',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
                  SizedBox(height: 15,),
                  Text('His re tea but something nana ,I di bona mod di terms and conditions .Ke go dirt sure help gore reprotected le di client tsarina di protected',style: TextStyle(color:Colors.grey),),
                ],
              )

          ),

          Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(left: 8,right: 8,top: 10),
              width: width * 0.85,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:const [
                  Text('Account Settings',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
                  SizedBox(height: 15,),
                  Text('His re tea but something nana ,I di bona mod di terms and conditions .Ke go dirt sure help gore reprotected le di client tsarina di protected',style: TextStyle(color:Colors.grey),),
                ],
              )

          ),


        ],
      ),

    );
  }
}
