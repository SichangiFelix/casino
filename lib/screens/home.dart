import 'package:casino/constants/colors.dart';
import 'package:casino/screens/activity.dart';
import 'package:casino/screens/privacy_&_policy.dart';
import 'package:casino/screens/sign_in.dart';
import 'package:casino/screens/choose_number_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  late PageController pageController;
  int pageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(
       initialPage: 0,
    );
  }

  onPageChanged(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
  }

  onTap(int pageIndex) {
    pageController.animateToPage(
      pageIndex,
      duration: const Duration(milliseconds: 300),
      curve: Curves.linearToEaseOut,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: PageView(
        children: <Widget>[
          Activity(),
          ChooseNumberScreen(),
          Container(),
          Container(),
          Container(),


        ],
        controller: pageController,
        onPageChanged: onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: Colors.white,
         inactiveColor: Colors.grey,
        activeColor: Colors.green,

        currentIndex: pageIndex,
        onTap: onTap,
        items:[
          BottomNavigationBarItem(
            // label: 'Timeline',
            icon: SvgPicture.asset(
                'assets/icons/home_icon.svg',
              width: 22,
            ),
          ),
          BottomNavigationBarItem(
            // label: 'Live feed',
            icon: SvgPicture.asset(
              'assets/icons/special_rectangle.svg',
              width: 24,
            ),
          ),
          BottomNavigationBarItem(
            // label: 'Upload',
            icon: SvgPicture.asset(
              'assets/icons/message_icon.svg',
              width: 24,
            ),
          ),
          BottomNavigationBarItem(
            // label: 'Search',
            icon: SvgPicture.asset(
              'assets/icons/favorites_icon.svg',
              width: 24,
            ),

          ),
          BottomNavigationBarItem(
            // label: 'Profile',
            icon: SvgPicture.asset(
              'assets/icons/account_icon.svg',
              width: 20,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: scaffoldColor,
        child: ListView(
          children:  [
            ListTile(trailing:IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.close,color: Colors.white,),),),
            Container(
              margin: EdgeInsets.only(left: 15,top: 10),
              child: Row(
                children: [
                  CircleAvatar(radius: 34,backgroundColor: Colors.amber,),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:const [
                       Text('Name ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),) ,
                       Text('name@gmail.com',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))
                    ],
                  )
                ],
              ),
            ),
            Divider(thickness: 1,color: Colors.grey,height: 30,endIndent: 10,indent: 10,),

            const ListTile(
              leading: Icon(Icons.person,color: Colors.white,),
              title: Text('My Profile',style: TextStyle(
                color:Colors.white,
                fontSize: 16,
              ),),
            ),
            const ListTile(
              leading: Icon(Icons.sports_football_outlined,color: Colors.white,),
              title: Text('Top Winner ',style: TextStyle(
                color:Colors.white,
                fontSize: 16,
              ),),
            ),
            const ListTile(
              leading: Icon(Icons.games_outlined,color: Colors.white,),
              title: Text('Upcoming Draw',style: TextStyle(
                color:Colors.white,
                fontSize: 16,
              ),),
            ),
            Divider(thickness: 1,color: Colors.grey,height: 30,endIndent: 10,indent: 10,),
             ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Privacy()));
              },
              leading: Icon(Icons.list_alt_sharp,color: Colors.white,),
              title: Text('Privacy & Policy',style: TextStyle(
                color:Colors.white,
                fontSize: 16,
              ),),
            ),
            const ListTile(
              leading: Icon(Icons.calendar_today_outlined,color: Colors.white,),
              title: Text('Terms & Condition',style: TextStyle(
                color:Colors.white,
                fontSize: 16,
              ),),
            ),
            Divider(thickness: 1,color: Colors.grey,height: 30,endIndent: 10,indent: 10,),

            const ListTile(
              leading: Icon(Icons.help,color: Colors.white,),
              title: Text('Help & Support',style: TextStyle(
                color:Colors.white,
                fontSize: 16,
              ),),
            ),
            const ListTile(
              leading: Icon(Icons.settings,color: Colors.white,),
              title: Text('Settings',style: TextStyle(
                color:Colors.white,
                fontSize: 16,
              ),),
            ),
            ListTile(
              onTap: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>SignIn()), (route) => false);
              },
              leading: Icon(Icons.logout,color: Colors.white,),
              title: Text('Sign Out',style: TextStyle(
                color:Colors.white,
                fontSize: 16,
              ),),
            ),



          ],
        ),
      ),
    );
  }
}
