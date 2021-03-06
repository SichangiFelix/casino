import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LatestDraw extends StatelessWidget {
  const LatestDraw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Container(
      height: 140,
      margin: EdgeInsets.all(8),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            padding: EdgeInsets.all(8),
            height: 100,
            width: width *0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border:const Border(
                 top: BorderSide(style: BorderStyle.solid,color: Colors.amber,),
                 bottom: BorderSide(style: BorderStyle.solid,color: Colors.amber,),
                left: BorderSide(style: BorderStyle.solid,color: Colors.amber,),
                right: BorderSide(style: BorderStyle.solid,color: Colors.amber,),
              ),

            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      color: Colors.transparent,
                      child: SvgPicture.asset('assets/images/group1.svg'),
                    ),
                    SizedBox(width: 3,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Mavuso Monday Money Club',style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('Draw took place on',style: TextStyle(color: Colors.grey,fontSize: 14),),
                        Text('Monday May 21,2021',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,),),

                      ],
                    )
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children:  [
                        Text('Winning Ticket',style: TextStyle(fontSize: 16,color: Colors.grey),),
                        Container(
                          height: 30,
                          width: 125,
                          child: Stack(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/ticket_container.svg',
                                fit: BoxFit.cover,
                                width: 125,

                              ),
                              Center(child: Text('Ticket ID:THPLYTREDCGY',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9),)),
                            ],
                          ),
                        )
                        ],
                    ),
                    Column(
                      children: const [
                        Text('Jackpot',style: TextStyle(fontSize: 16,color: Colors.grey),),

                        Text('R 5 234 70,75',style: TextStyle(fontSize: 16),),
                      ],
                    ),

                  ],
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 10),
            padding: EdgeInsets.all(8),
            height: 100,
            width: width *0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border:const Border(
                top: BorderSide(style: BorderStyle.solid,color: Colors.amber,),
                bottom: BorderSide(style: BorderStyle.solid,color: Colors.amber,),
                left: BorderSide(style: BorderStyle.solid,color: Colors.amber,),
                right: BorderSide(style: BorderStyle.solid,color: Colors.amber,),
              ),

            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      color: Colors.transparent,
                      child: SvgPicture.asset('assets/images/group3.svg',),
                    ),
                    SizedBox(width: 3,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Mavuso Monday Money Club',style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('Draw took place on',style: TextStyle(color: Colors.grey,fontSize: 14),),
                        Text('Monday May 21,2021',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,),),

                      ],
                    )
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children:  [
                        Text('Winning Ticket',style: TextStyle(fontSize: 16,color: Colors.grey),),
                        Container(
                          height: 25,
                          width: 125,
                          child:Stack(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/ticket_container.svg',
                                width: 125,
                                fit: BoxFit.cover,
                              ),
                              Center(child: Text('Ticket ID:THPLYTREDCGY',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9),)),
                            ],
                          ), )
                      ],
                    ),
                    Column(
                      children: const [
                        Text('Jackpot',style: TextStyle(fontSize: 16,color: Colors.grey),),

                        Text('R 5 234 70,75',style: TextStyle(fontSize: 16),),
                      ],
                    ),

                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
