import 'package:flutter/material.dart';

class SetItem extends StatefulWidget {
  final Icon iconSet;
  final String headline;
  const SetItem({Key? key, required this.iconSet, required this.headline}) : super(key: key);

  @override
  State<SetItem> createState() => _SetItemState();
}

class _SetItemState extends State<SetItem> {
  bool isSwitched =false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)
      ),
      padding: EdgeInsets.only(left: 10,right: 10,top: 5,),
      height: MediaQuery.of(context).size.height/15,
      child: Row(
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.circular(7)
            ),
            child: widget.iconSet,
          ),
          SizedBox(width: 7,),
          Text(widget.headline,style: TextStyle(fontWeight: FontWeight.w500,color:Colors.black,fontSize: 18),),
          Spacer(),
          Switch(
            value: isSwitched,
            onChanged: (value){
              setState(() {
                isSwitched=value;
              });
            },
            activeColor: Colors.white,
            activeTrackColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
