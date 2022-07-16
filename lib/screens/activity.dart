import 'package:casino/widgets/latest_draw.dart';
import 'package:casino/widgets/latest_winners.dart';
import 'package:casino/widgets/play_draw.dart';
import 'package:casino/widgets/winning_tickets.dart';
import 'package:flutter/material.dart';

class Activity extends StatelessWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    var width =MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
      body:  SafeArea(
        child: Stack(
          children: [
            Container(
              height: height,
             decoration:const BoxDecoration(
               gradient: LinearGradient(
                   begin: Alignment.topRight,
                   end: Alignment.bottomLeft,
                   colors: [
                 Colors.deepPurple,
                 Colors.white
               ])
             ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    tileColor: Colors.transparent,
                    leading:IconButton(icon: const Icon(Icons.menu,color: Colors.white,),onPressed: (){
                      Scaffold.of(context).openDrawer();
                    },) ,
                    trailing: IconButton(icon: const Icon(Icons.circle_notifications_outlined,color: Colors.white,size: 30,),onPressed: (){},),
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
                  const Text('Latest Draw',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  const LatestDraw(),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: const [
                     Text('Latest Winners',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                     Text('R 1200 000 Each',style: TextStyle(fontSize: 16),),

                   ],
                 ),
                  const LatestWinners(),
                  const Text('Latest Weeks Winning Tickets',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  Container(
                    width: width*0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Winning Tickets',style: TextStyle(fontSize: 18,color: Colors.grey),),

                        Column(
                          children: const [
                            Text('Amount Won Each',style: TextStyle(fontSize: 16,color: Colors.grey),),

                            Text('R 5 234 70,75',style: TextStyle(fontSize: 16),),
                          ],
                        ),

                      ],
                    ),
                  ),
                  const WinningTickets()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
