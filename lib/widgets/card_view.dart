import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardView extends StatefulWidget {
  const CardView({Key? key}) : super(key: key);

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    //This gets screen dimensions
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: 152,
      margin: EdgeInsets.all(8),
      child: PageView.builder(
        onPageChanged: (index){
          setState((){
            _selectedIndex = index;
          });
        },
        controller: PageController(viewportFraction: 0.8),
          itemCount: cards.length,
          itemBuilder: (context, index) {

          var item = cards[index];
          var _scale = _selectedIndex == index ? 1.0 : 0.8;
            return TweenAnimationBuilder(
              duration: Duration(milliseconds: 250),
              tween: Tween(begin: _scale, end: _scale),
              curve: Curves.ease,
              child: Container(
                child: SvgPicture.asset(
                  item,
                ),
              ),
              builder: (context, double value, child){
                return Transform.scale(
                  scale: value,
                  child: child,
                );
              },
            );
          },
      ) ,
    );
  }
}

//Create a list of cards at this point
List<String> cards = ['assets/images/group1.svg', 'assets/images/card2.svg'];
