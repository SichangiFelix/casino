import 'package:casino/constants/colors.dart';
import 'package:casino/widgets/latest_draw.dart';
import 'package:casino/widgets/latest_winners.dart';
import 'package:casino/widgets/play_draw.dart';
import 'package:casino/widgets/winning_tickets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Activity extends StatelessWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    var width =MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body:  SafeArea(
        child: Stack(
          children: [
            //SvgPicture.asset('assets/images/bg2.svg',height: height*0.13,), // Replace with the correct asset
            SingleChildScrollView (
              child: Column(

                children: [
                  ListTile(
                    tileColor: scaffoldColor,
                    leading:IconButton(icon: const Icon(Icons.menu,color: Colors.white,),onPressed: (){
                      Scaffold.of(context).openDrawer();
                    },) ,
                    trailing: IconButton(icon:  SvgPicture.asset('assets/icons/notification.svg',),onPressed: (){},),
                  ),

                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    alignment: Alignment.center,
                    height: 35,
                    width: width*0.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white
                    ),
                    child: Center(
                      child: Container(
                        height: 29,
                        width: width*0.54,
                        child: TextFormField(
                          controller: searchController,
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            hintText: 'Search...',
                            hintStyle: TextStyle(color: Colors.grey),
                            suffixIcon: const Icon(Icons.search_outlined,color: Colors.grey,),
                          ),

                        ),
                      ),
                    ),
                  ),

                const PLayDraw(),
                  Container(
                      child: const Text('Latest Draw',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                  const LatestDraw(),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: const [
                     Text('Latest Winners',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                     Text('R 1200 000 Each',style: TextStyle(fontSize: 14),),

                   ],
                 ),
                  const LatestWinners(),
                  const Text('Latest Weeks Winning Tickets',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  Container(
                    margin: EdgeInsets.only(left: 15,right: 10),
                    width: width*0.95,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Winning Tickets',style: TextStyle(fontSize: 14,color: Colors.grey),),

                        Column(
                          children: const [
                            Text('Amount Won Each',style: TextStyle(fontSize: 14,color: Colors.grey),),

                            Text('R 5 234 70,75',style: TextStyle(fontSize: 14),),
                          ],
                        ),

                      ],
                    ),
                  ),
                  WinningTickets(ticketId1: '325435354c#', ticketId2: '322dw5354c#', ticketId3: '343d5354c#',)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
