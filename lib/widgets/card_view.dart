import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardView extends StatelessWidget {
  const CardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Container(
      height: 150,
      margin: EdgeInsets.all(8),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin:const EdgeInsets.only(right: 5),
            child: SvgPicture.asset(
              'assets/images/card1.svg',
              width: width * 0.60,
            ),
          ),
          Container(
            margin:const EdgeInsets.only(right: 5),
            child: SvgPicture.asset(
              'assets/images/card2.svg',
              width: width * 0.60,
            ),
          ),
        ],
      ),
    );
  }
}