import 'package:casino/screens/choose_number_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PLayDraw extends StatelessWidget {
  const PLayDraw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Container(
      height: 160,
      margin: EdgeInsets.all(8),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            height: 100,
            width: width *0.33,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent
            ),
            child: Column(
              children: [
                Container(
                  height: 60,
                  padding: const EdgeInsets.all(8),
                  color: Colors.transparent,
              child: SvgPicture.asset('assets/images/group3.svg',fit: BoxFit.contain,height: 30,width: 50,),),


                Text('R78 Million Win \n BTC',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),),
                SizedBox(
                  width: 90,
                  height: 32,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ChooseNumberScreen()));

                  }, child: Text('Play now',style: TextStyle(color: Colors.white))),
                ),
                Text('Next Draw',style: TextStyle(color: Colors.grey,
                  fontSize: 12,
                ),),
                Text('8:25:43:12',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            height: 100,
            width: width *0.33,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent
            ),
            child: Column(
              children: [
                Container(
                  height: 60,
                  padding: const EdgeInsets.all(8),
                  color: Colors.transparent,
              child: SvgPicture.asset('assets/images/group3.svg',fit: BoxFit.contain,height: 30,width: 50,),),


                Text('R22 Million Win \n BTC',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),),
                SizedBox(
                  width: 90,
                  height: 32,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ChooseNumberScreen()));

                  }, child: Text('Play now',style: TextStyle(color: Colors.white, fontSize: 12))),
                ),
                Text('Next Draw',style: TextStyle(color: Colors.grey),),
                Text('12 June 2021',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            height: 100,
            width: width *0.33,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent
            ),
            child: Column(
              children: [
                Container(
                  height: 60,
                  padding: const EdgeInsets.all(8),
                  color: Colors.transparent,
              child: SvgPicture.asset('assets/images/group3.svg',fit: BoxFit.contain,height: 30,width: 50,),),


                Text('R100 Million Win \n BTC',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),),
                SizedBox(
                  width: 90,
                  height: 32,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ChooseNumberScreen()));
                  }, child: Text('Play now',style: TextStyle(color: Colors.white, fontSize: 12))),
                ),
                Text('Next Draw',style: TextStyle(color: Colors.grey),),
                Text('24 June 2021',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
