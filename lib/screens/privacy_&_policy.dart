import 'package:casino/constants/colors.dart';
import 'package:flutter/material.dart';

class Privacy extends StatelessWidget {
  const Privacy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: AppBar(
        backgroundColor: scaffoldColor,
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios,
          size: 18,
        ),onPressed: (){
          Navigator.pop(context);
      },),
        title: Text('Privacy & Policy',style: TextStyle(color: Colors.white,
          fontSize: 15.0,
        ),),
        elevation: 0,
      ),
      body: Column(
        children: [
          Spacer(),
          Container(
            height: height/1.24,
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
                        Text('Data Security',style: boldTextStyle),
                        SizedBox(height: 15,),
                        Text('His re tea but something nana ,I di bona mod di terms and conditions .Ke go dirt sure help gore reprotected le di client tsarina di protected',style: normTextStyle),
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
                        Text('Change Mail & Password',style: boldTextStyle),
                        SizedBox(height: 15,),
                        Text('His re tea but something nana ,I di bona mod di terms and conditions .Ke go dirt sure help gore reprotected le di client tsarina di protected',style: normTextStyle),
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
                        Text('Lottery Draw',style: boldTextStyle),
                        SizedBox(height: 15,),
                        Text('His re tea but something nana ,I di bona mod di terms and conditions .Ke go dirt sure help gore reprotected le di client tsarina di protected',style: normTextStyle),
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
                        Text('Account Settings',style: boldTextStyle),
                        SizedBox(height: 15,),
                        Text('His re tea but something nana ,I di bona mod di terms and conditions .Ke go dirt sure help gore reprotected le di client tsarina di protected',style: normTextStyle),
                      ],
                    )

                ),
              ],
            ),

          ),
        ],
      ),
    );
  }
}

const boldTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 22,
);

const normTextStyle = TextStyle(
  fontWeight: FontWeight.w500,
  color: Colors.black54,
  fontSize: 15,
);