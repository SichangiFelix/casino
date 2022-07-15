import 'package:casino/screens/activity.dart';
import 'package:casino/screens/privacy_&_policy.dart';
import 'package:casino/screens/sign_in.dart';
import 'package:casino/screens/third.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  late PageController pageController;
  int pageIndex = 2;

  @override
  void initState() {
    super.initState();
    pageController = PageController(
       initialPage: 2,
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
          Container(),
          Third(),
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
        activeColor:Colors.amber,

        currentIndex: pageIndex,
        onTap: onTap,
        items:const [
          BottomNavigationBarItem(
            // label: 'Timeline',
            icon: Icon(Icons.add_home_outlined),
          ),
          BottomNavigationBarItem(
            // label: 'Live feed',
            icon: Icon(Icons.call_to_action_sharp),
          ),
          BottomNavigationBarItem(
            // label: 'Upload',
            icon: Icon(
              Icons.sms,

              // size: 35.0,
            ),
          ),
          BottomNavigationBarItem(
            // label: 'Search',
            icon: Icon(Icons.favorite_border),

          ),
          BottomNavigationBarItem(
            // label: 'Profile',
            icon: Icon(Icons.person),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.indigo[900],
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
