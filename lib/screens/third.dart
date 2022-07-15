import 'package:casino/screens/payment_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Third extends StatefulWidget {
  // const Third({Key? key}) : super(key: key);



  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {

   bool selected1=false;
   bool selected2=false;
   bool selected3=false;
   bool selected4=false;
   bool selected5=false;
   bool selected6=false;
   bool selected7=false;
   bool selected8=false;
   bool selected9=false;
   bool selected10=false;
   bool selected11=false;
   bool selected12=false;
   bool selected13=false;
   bool selected14=false;
   bool selected15=false;
   bool selected16=false;
   bool selected17=false;
   bool selected18=false;
   bool selected19=false;
   bool selected20=false;
   bool selected21=false;
   bool selected22=false;
   bool selected23=false;
   bool selected24=false;
   bool selected25=false;
   bool selected26=false;
   bool selected27=false;
   bool selected28=false;
   bool selected29=false;
   bool selected30=false;

     String firstNo= '0';
     String secondNo='0';
     String thirdNo='0';
     String fourthNo='0';
     String fifthNo='0';

      List selectedNumbers=[];





  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        // leading: IconButton(icon:const Icon(Icons.arrow_back_ios),onPressed: (){
        //   Navigator.pop(context);
        //
        // },),
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text('Choose Number',style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 15),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
                child: Text('Choose \n5 numbers',style: TextStyle(color: Colors.white),)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                fieldNumber1(firstNo),
                fieldNumber2(secondNo),
                fieldNumber3(thirdNo),
                fieldNumber4(fourthNo),
                fieldNumber5(fifthNo)

              ],
            ),
             // Spacer(),
            SizedBox(height: 15,),
            bottomContainer(context),


          ],
        ),
      ),

    );
  }



  Widget number1( String assignedNumber){

    return    InkWell(
      onTap: (){
        if(firstNo=='0'){
          setState(() {
            this.firstNo = assignedNumber;
            selected1=true;
            selectedNumbers.add(1);
            print(selectedNumbers);
          });

        }else if (firstNo != '0'  && secondNo =='0') {
          setState(() {
            thirdNo = '0';
            this.secondNo = assignedNumber;
            selected1=true;
            selectedNumbers.add(1);
            print(selectedNumbers);

          });
        }
          if( secondNo != '0' && thirdNo =='0'){
          setState(() {
            this.thirdNo = assignedNumber;
            selected1=true;
            selectedNumbers.add(1);
            print(selectedNumbers);
          });
        }else if(thirdNo != '0' && fourthNo =='0'){
          setState(() {
            this.fourthNo = assignedNumber;
            selected1=true;
            selectedNumbers.add(1);
            print(selectedNumbers);
          });
        }
         else if(fourthNo != '0' && fifthNo == '0'){
          setState(() {
            this.fifthNo = assignedNumber;
            selected1=true;
            selectedNumbers.add(1);
            print(selectedNumbers);
          });
        }


      },
      onDoubleTap: (){
        setState(() {
          // this.firstNo='0';
          selected1=false;
        });
      },
      child: Container(
        margin: EdgeInsets.only(top: 20,right: 5,left: 5),


        height: 40,
        decoration:  BoxDecoration(
        color: selected1 ? Colors.indigo:Colors.transparent,
          border:const  Border(
            bottom: BorderSide(style: BorderStyle.solid,color: Colors.grey),
            top: BorderSide(style: BorderStyle.solid,color: Colors.grey),
            left: BorderSide(style: BorderStyle.solid,color: Colors.grey),
            right: BorderSide(style: BorderStyle.solid,color: Colors.grey),
          ),
          borderRadius: BorderRadius.circular(7)
        ),
        child:  Center(child:
        Text(assignedNumber,
          style: TextStyle(
            color: selected1 ? Colors.white:Colors.black,
          ),

        )),



      ),
    );
  }
   Widget number2( String assignedNumber){

     return    InkWell(
       onTap: (){
         if(firstNo=='0'){
           setState(() {
             this.firstNo = assignedNumber;
             selected2=true;
             selectedNumbers.add(2);
             print(selectedNumbers);
           });

         }else if (firstNo != '0'  && secondNo =='0') {
           setState(() {
             thirdNo = '0';
             this.secondNo = assignedNumber;
             selected2=true;
             selectedNumbers.add(2);
             print(selectedNumbers);

           });
         }
         if( secondNo != '0' && thirdNo =='0'){
           setState(() {
             this.thirdNo = assignedNumber;
             selected2=true;
             selectedNumbers.add(2);
             print(selectedNumbers);
           });
         }else if(thirdNo != '0' && fourthNo =='0'){
           setState(() {
             this.fourthNo = assignedNumber;
             selected2=true;
             selectedNumbers.add(2);
             print(selectedNumbers);
           });
         }
         else if(fourthNo != '0' && fifthNo == '0'){
           setState(() {
             this.fifthNo = assignedNumber;
             selected2=true;
             selectedNumbers.add(2);
             print(selectedNumbers);
           });
         }
       },
       onDoubleTap: (){
         setState(() {
           selected2=false;
           selectedNumbers.removeLast();
           print(selectedNumbers);
         });
       },
       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 40,
         decoration:  BoxDecoration(
             color: selected2 ? Colors.indigo:Colors.transparent,
             border:const  Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               top: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               left: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               right: BorderSide(style: BorderStyle.solid,color: Colors.grey),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child:  Center(child:
         Text(assignedNumber,
           style: TextStyle(
             color: selected2 ? Colors.white:Colors.black,
           ),

         )),



       ),
     );
   }
   Widget number3( String assignedNumber){

     return    InkWell(
       onTap: (){
         if(firstNo=='0'){
           setState(() {
             this.firstNo = assignedNumber;
             selected3=true;
             selectedNumbers.add(3);
             print(selectedNumbers);
           });

         }else if (firstNo != '0'  && secondNo =='0') {
           setState(() {
             thirdNo = '0';
             this.secondNo = assignedNumber;
             selected3=true;
             selectedNumbers.add(3);
             print(selectedNumbers);

           });
         }
         if( secondNo != '0' && thirdNo =='0'){
           setState(() {
             this.thirdNo = assignedNumber;
             selected3=true;
             selectedNumbers.add(3);
             print(selectedNumbers);
           });
         }else if(thirdNo != '0' && fourthNo =='0'){
           setState(() {
             this.fourthNo = assignedNumber;
             selected3=true;
             selectedNumbers.add(3);
             print(selectedNumbers);
           });
         }
         else if(fourthNo != '0' && fifthNo == '0'){
           setState(() {
             this.fifthNo = assignedNumber;
             selected3=true;
             selectedNumbers.add(3);
             print(selectedNumbers);
           });
         }
       },
       onDoubleTap: (){
         setState(() {
           selected3=false;
         });
       },
       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 40,
         decoration:  BoxDecoration(
             color: selected3 ? Colors.indigo:Colors.transparent,
             border:const  Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               top: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               left: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               right: BorderSide(style: BorderStyle.solid,color: Colors.grey),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child:  Center(child:
         Text(assignedNumber,
           style: TextStyle(
             color: selected3 ? Colors.white:Colors.black,
           ),

         )),



       ),
     );
   }
   Widget number4( String assignedNumber){

     return    InkWell(
       onTap: (){
         if(firstNo=='0'){
           setState(() {
             this.firstNo = assignedNumber;
             selected4=true;
             selectedNumbers.add(4);
             print(selectedNumbers);
           });

         }else if (firstNo != '0'  && secondNo =='0') {
           setState(() {
             thirdNo = '0';
             this.secondNo = assignedNumber;
             selected4=true;
             selectedNumbers.add(4);
             print(selectedNumbers);

           });
         }
         if( secondNo != '0' && thirdNo =='0'){
           setState(() {
             this.thirdNo = assignedNumber;
             selected4=true;
             selectedNumbers.add(4);
             print(selectedNumbers);
           });
         }else if(thirdNo != '0' && fourthNo =='0'){
           setState(() {
             this.fourthNo = assignedNumber;
             selected4=true;
             selectedNumbers.add(4);
             print(selectedNumbers);
           });
         }
         else if(fourthNo != '0' && fifthNo == '0'){
           setState(() {
             this.fifthNo = assignedNumber;
             selected4=true;
             selectedNumbers.add(4);
             print(selectedNumbers);
           });
         }
       },
       onDoubleTap: (){
         setState(() {
           selected4=false;
         });
       },
       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 40,
         decoration:  BoxDecoration(
             color: selected4 ? Colors.indigo:Colors.transparent,
             border:const  Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               top: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               left: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               right: BorderSide(style: BorderStyle.solid,color: Colors.grey),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child:  Center(child:
         Text(assignedNumber,
           style: TextStyle(
             color: selected4 ? Colors.white:Colors.black,
           ),

         )),



       ),
     );
   }
   Widget number5( String assignedNumber){

     return    InkWell(
       onTap: (){
         if(firstNo=='0'){
           setState(() {
             this.firstNo = assignedNumber;
             selected5=true;
             selectedNumbers.add(5);
             print(selectedNumbers);
           });

         }else if (firstNo != '0'  && secondNo =='0') {
           setState(() {
             thirdNo = '0';
             this.secondNo = assignedNumber;
             selected5=true;
             selectedNumbers.add(5);
             print(selectedNumbers);

           });
         }
         if( secondNo != '0' && thirdNo =='0'){
           setState(() {
             this.thirdNo = assignedNumber;
             selected5=true;
             selectedNumbers.add(5);
             print(selectedNumbers);
           });
         }else if(thirdNo != '0' && fourthNo =='0'){
           setState(() {
             this.fourthNo = assignedNumber;
             selected5=true;
             selectedNumbers.add(5);
             print(selectedNumbers);
           });
         }
         else if(fourthNo != '0' && fifthNo == '0'){
           setState(() {
             this.fifthNo = assignedNumber;
             selected5=true;
             selectedNumbers.add(5);
             print(selectedNumbers);
           });
         }
       },
       onDoubleTap: (){
         setState(() {
           selected5=false;
         });
       },
       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 40,
         decoration:  BoxDecoration(
             color: selected5 ? Colors.indigo:Colors.transparent,
             border:const  Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               top: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               left: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               right: BorderSide(style: BorderStyle.solid,color: Colors.grey),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child:  Center(child:
         Text(assignedNumber,
           style: TextStyle(
             color: selected5 ? Colors.white:Colors.black,
           ),

         )),



       ),
     );
   }
   Widget number6( String assignedNumber){

     return    InkWell(
       onTap: (){
         if(firstNo=='0'){
           setState(() {
             this.firstNo = assignedNumber;
             selected6=true;
             selectedNumbers.add(6);
             print(selectedNumbers);
           });

         }else if (firstNo != '0'  && secondNo =='0') {
           setState(() {
             thirdNo = '0';
             this.secondNo = assignedNumber;
             selected6=true;
             selectedNumbers.add(6);
             print(selectedNumbers);

           });
         }
         if( secondNo != '0' && thirdNo =='0'){
           setState(() {
             this.thirdNo = assignedNumber;
             selected6=true;
             selectedNumbers.add(6);
             print(selectedNumbers);
           });
         }else if(thirdNo != '0' && fourthNo =='0'){
           setState(() {
             this.fourthNo = assignedNumber;
             selected6=true;
             selectedNumbers.add(6);
             print(selectedNumbers);
           });
         }
         else if(fourthNo != '0' && fifthNo == '0'){
           setState(() {
             this.fifthNo = assignedNumber;
             selected6=true;
             selectedNumbers.add(6);
             print(selectedNumbers);
           });
         }
       },
       onDoubleTap: (){
         setState(() {
           selected6=false;
         });
       },
       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 40,
         decoration:  BoxDecoration(
             color: selected6 ? Colors.indigo:Colors.transparent,
             border:const  Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               top: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               left: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               right: BorderSide(style: BorderStyle.solid,color: Colors.grey),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child:  Center(child:
         Text(assignedNumber,
           style: TextStyle(
             color: selected6 ? Colors.white:Colors.black,
           ),

         )),



       ),
     );
   }
   Widget number7( String assignedNumber){

     return    InkWell(
       onTap: (){
         if(firstNo=='0'){
           setState(() {
             this.firstNo = assignedNumber;
             selected7=true;
             selectedNumbers.add(7);
             print(selectedNumbers);
           });

         }else if (firstNo != '0'  && secondNo =='0') {
           setState(() {
             thirdNo = '0';
             this.secondNo = assignedNumber;
             selected7=true;
             selectedNumbers.add(7);
             print(selectedNumbers);

           });
         }
         if( secondNo != '0' && thirdNo =='0'){
           setState(() {
             this.thirdNo = assignedNumber;
             selected7=true;
             selectedNumbers.add(7);
             print(selectedNumbers);
           });
         }else if(thirdNo != '0' && fourthNo =='0'){
           setState(() {
             this.fourthNo = assignedNumber;
             selected7=true;
             selectedNumbers.add(7);
             print(selectedNumbers);
           });
         }
         else if(fourthNo != '0' && fifthNo == '0'){
           setState(() {
             this.fifthNo = assignedNumber;
             selected7=true;
             selectedNumbers.add(7);
             print(selectedNumbers);
           });
         }
       },
       onDoubleTap: (){
         setState(() {
           selected7=false;
         });
       },
       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 40,
         decoration:  BoxDecoration(
             color: selected7 ? Colors.indigo:Colors.transparent,
             border:const  Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               top: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               left: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               right: BorderSide(style: BorderStyle.solid,color: Colors.grey),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child:  Center(child:
         Text(assignedNumber,
           style: TextStyle(
             color: selected7 ? Colors.white:Colors.black,
           ),

         )),



       ),
     );
   }
   Widget number8( String assignedNumber){

     return    InkWell(
       onTap: (){
         if(firstNo=='0'){
           setState(() {
             this.firstNo = assignedNumber;
             selected8=true;
             selectedNumbers.add(8);
             print(selectedNumbers);
           });

         }else if (firstNo != '0'  && secondNo =='0') {
           setState(() {
             thirdNo = '0';
             this.secondNo = assignedNumber;
             selected8=true;
             selectedNumbers.add(8);
             print(selectedNumbers);

           });
         }
         if( secondNo != '0' && thirdNo =='0'){
           setState(() {
             this.thirdNo = assignedNumber;
             selected8=true;
             selectedNumbers.add(8);
             print(selectedNumbers);
           });
         }else if(thirdNo != '0' && fourthNo =='0'){
           setState(() {
             this.fourthNo = assignedNumber;
             selected8=true;
             selectedNumbers.add(8);
             print(selectedNumbers);
           });
         }
         else if(fourthNo != '0' && fifthNo == '0'){
           setState(() {
             this.fifthNo = assignedNumber;
             selected8=true;
             selectedNumbers.add(8);
             print(selectedNumbers);
           });
         }
       },
       onDoubleTap: (){
         setState(() {
           selected8=false;
         });
       },
       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 40,
         decoration:  BoxDecoration(
             color: selected8 ? Colors.indigo:Colors.transparent,
             border:const  Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               top: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               left: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               right: BorderSide(style: BorderStyle.solid,color: Colors.grey),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child:  Center(child:
         Text(assignedNumber,
           style: TextStyle(
             color: selected8 ? Colors.white:Colors.black,
           ),

         )),



       ),
     );
   }
   Widget number9( String assignedNumber){

     return    InkWell(
       onTap: (){
         if(firstNo=='0'){
           setState(() {
             this.firstNo = assignedNumber;
             selected9=true;
             selectedNumbers.add(9);
             print(selectedNumbers);
           });

         }else if (firstNo != '0'  && secondNo =='0') {
           setState(() {
             thirdNo = '0';
             this.secondNo = assignedNumber;
             selected9=true;
             selectedNumbers.add(9);
             print(selectedNumbers);

           });
         }
         if( secondNo != '0' && thirdNo =='0'){
           setState(() {
             this.thirdNo = assignedNumber;
             selected9=true;
             selectedNumbers.add(9);
             print(selectedNumbers);
           });
         }else if(thirdNo != '0' && fourthNo =='0'){
           setState(() {
             this.fourthNo = assignedNumber;
             selected9=true;
             selectedNumbers.add(9);
             print(selectedNumbers);
           });
         }
         else if(fourthNo != '0' && fifthNo == '0'){
           setState(() {
             this.fifthNo = assignedNumber;
             selected9=true;
             selectedNumbers.add(9);
             print(selectedNumbers);
           });
         }
       },
       onDoubleTap: (){
         setState(() {
           selected9=false;
         });
       },
       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 40,
         decoration:  BoxDecoration(
             color: selected9 ? Colors.indigo:Colors.transparent,
             border:const  Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               top: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               left: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               right: BorderSide(style: BorderStyle.solid,color: Colors.grey),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child:  Center(child:
         Text(assignedNumber,
           style: TextStyle(
             color: selected9 ? Colors.white:Colors.black,
           ),

         )),



       ),
     );
   }
   Widget number10( String assignedNumber){

     return    InkWell(
       onTap: (){
         if(firstNo=='0'){
           setState(() {
             this.firstNo = assignedNumber;
             selected10=true;
             selectedNumbers.add(10);
             print(selectedNumbers);
           });

         }else if (firstNo != '0'  && secondNo =='0') {
           setState(() {
             thirdNo = '0';
             this.secondNo = assignedNumber;
             selected10=true;
             selectedNumbers.add(10);
             print(selectedNumbers);

           });
         }
         if( secondNo != '0' && thirdNo =='0'){
           setState(() {
             this.thirdNo = assignedNumber;
             selected10=true;
             selectedNumbers.add(10);
             print(selectedNumbers);
           });
         }else if(thirdNo != '0' && fourthNo =='0'){
           setState(() {
             this.fourthNo = assignedNumber;
             selected10=true;
             selectedNumbers.add(10);
             print(selectedNumbers);
           });
         }
         else if(fourthNo != '0' && fifthNo == '0'){
           setState(() {
             this.fifthNo = assignedNumber;
             selected10=true;
             selectedNumbers.add(10);
             print(selectedNumbers);
           });
         }
       },
       onDoubleTap: (){
         setState(() {
           selected10=false;
         });
       },
       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 40,
         decoration:  BoxDecoration(
             color: selected10 ? Colors.indigo:Colors.transparent,
             border:const  Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               top: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               left: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               right: BorderSide(style: BorderStyle.solid,color: Colors.grey),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child:  Center(child:
         Text(assignedNumber,
           style: TextStyle(
             color: selected10 ? Colors.white:Colors.black,
           ),

         )),



       ),
     );
   }
   Widget number11( String assignedNumber){

     return    InkWell(
       onTap: (){
         if(firstNo=='0'){
           setState(() {
             this.firstNo = assignedNumber;
             selected11=true;
             selectedNumbers.add(11);
             print(selectedNumbers);
           });

         }else if (firstNo != '0'  && secondNo =='0') {
           setState(() {
             thirdNo = '0';
             this.secondNo = assignedNumber;
             selected11=true;
             selectedNumbers.add(11);
             print(selectedNumbers);

           });
         }
         if( secondNo != '0' && thirdNo =='0'){
           setState(() {
             this.thirdNo = assignedNumber;
             selected11=true;
             selectedNumbers.add(11);
             print(selectedNumbers);
           });
         }else if(thirdNo != '0' && fourthNo =='0'){
           setState(() {
             this.fourthNo = assignedNumber;
             selected11=true;
             selectedNumbers.add(11);
             print(selectedNumbers);
           });
         }
         else if(fourthNo != '0' && fifthNo == '0'){
           setState(() {
             this.fifthNo = assignedNumber;
             selected11=true;
             selectedNumbers.add(11);
             print(selectedNumbers);
           });
         }
       },
       onDoubleTap: (){
         setState(() {
           selected11=false;
         });
       },
       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 40,
         decoration:  BoxDecoration(
             color: selected11 ? Colors.indigo:Colors.transparent,
             border:const  Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               top: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               left: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               right: BorderSide(style: BorderStyle.solid,color: Colors.grey),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child:  Center(child:
         Text(assignedNumber,
           style: TextStyle(
             color: selected11 ? Colors.white:Colors.black,
           ),

         )),



       ),
     );
   }
   Widget number12( String assignedNumber){

     return    InkWell(
       onTap: (){
         if(firstNo=='0'){
           setState(() {
             this.firstNo = assignedNumber;
             selected12=true;
             selectedNumbers.add(12);
             print(selectedNumbers);
           });

         }else if (firstNo != '0'  && secondNo =='0') {
           setState(() {
             thirdNo = '0';
             this.secondNo = assignedNumber;
             selected12=true;
             selectedNumbers.add(12);
             print(selectedNumbers);

           });
         }
         if( secondNo != '0' && thirdNo =='0'){
           setState(() {
             this.thirdNo = assignedNumber;
             selected12=true;
             selectedNumbers.add(12);
             print(selectedNumbers);
           });
         }else if(thirdNo != '0' && fourthNo =='0'){
           setState(() {
             this.fourthNo = assignedNumber;
             selected12=true;
             selectedNumbers.add(12);
             print(selectedNumbers);
           });
         }
         else if(fourthNo != '0' && fifthNo == '0'){
           setState(() {
             this.fifthNo = assignedNumber;
             selected12=true;
             selectedNumbers.add(12);
             print(selectedNumbers);
           });
         }
       },
       onDoubleTap: (){
         setState(() {
           selected12=false;
         });
       },
       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 40,
         decoration:  BoxDecoration(
             color: selected12 ? Colors.indigo:Colors.transparent,
             border:const  Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               top: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               left: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               right: BorderSide(style: BorderStyle.solid,color: Colors.grey),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child:  Center(child:
         Text(assignedNumber,
           style: TextStyle(
             color: selected12 ? Colors.white:Colors.black,
           ),

         )),



       ),
     );
   }
   Widget number13( String assignedNumber){

     return    InkWell(
       onTap: (){
         if(firstNo=='0'){
           setState(() {
             this.firstNo = assignedNumber;
             selected13=true;
             selectedNumbers.add(13);
             print(selectedNumbers);
           });

         }else if (firstNo != '0'  && secondNo =='0') {
           setState(() {
             thirdNo = '0';
             this.secondNo = assignedNumber;
             selected13=true;
             selectedNumbers.add(13);
             print(selectedNumbers);

           });
         }
         if( secondNo != '0' && thirdNo =='0'){
           setState(() {
             this.thirdNo = assignedNumber;
             selected13=true;
             selectedNumbers.add(13);
             print(selectedNumbers);
           });
         }else if(thirdNo != '0' && fourthNo =='0'){
           setState(() {
             this.fourthNo = assignedNumber;
             selected13=true;
             selectedNumbers.add(13);
             print(selectedNumbers);
           });
         }
         else if(fourthNo != '0' && fifthNo == '0'){
           setState(() {
             this.fifthNo = assignedNumber;
             selected13=true;
             selectedNumbers.add(13);
             print(selectedNumbers);
           });
         }
       },
       onDoubleTap: (){
         setState(() {
           selected13=false;
         });
       },
       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 40,
         decoration:  BoxDecoration(
             color: selected13 ? Colors.indigo:Colors.transparent,
             border:const  Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               top: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               left: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               right: BorderSide(style: BorderStyle.solid,color: Colors.grey),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child:  Center(child:
         Text(assignedNumber,
           style: TextStyle(
             color: selected13 ? Colors.white:Colors.black,
           ),

         )),



       ),
     );
   }
   Widget number14( String assignedNumber){

     return    InkWell(
       onTap: (){
         if(firstNo=='0'){
           setState(() {
             this.firstNo = assignedNumber;
             selected14=true;
             selectedNumbers.add(14);
             print(selectedNumbers);
           });

         }else if (firstNo != '0'  && secondNo =='0') {
           setState(() {
             thirdNo = '0';
             this.secondNo = assignedNumber;
             selected14=true;
             selectedNumbers.add(14);
             print(selectedNumbers);

           });
         }
         if( secondNo != '0' && thirdNo =='0'){
           setState(() {
             this.thirdNo = assignedNumber;
             selected14=true;
             selectedNumbers.add(14);
             print(selectedNumbers);
           });
         }else if(thirdNo != '0' && fourthNo =='0'){
           setState(() {
             this.fourthNo = assignedNumber;
             selected14=true;
             selectedNumbers.add(14);
             print(selectedNumbers);
           });
         }
         else if(fourthNo != '0' && fifthNo == '0'){
           setState(() {
             this.fifthNo = assignedNumber;
             selected14=true;
             selectedNumbers.add(14);
             print(selectedNumbers);
           });
         }
       },
       onDoubleTap: (){
         setState(() {
           selected14=false;
         });
       },
       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 40,
         decoration:  BoxDecoration(
             color: selected14 ? Colors.indigo:Colors.transparent,
             border:const  Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               top: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               left: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               right: BorderSide(style: BorderStyle.solid,color: Colors.grey),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child:  Center(child:
         Text(assignedNumber,
           style: TextStyle(
             color: selected14 ? Colors.white:Colors.black,
           ),

         )),



       ),
     );
   }
   Widget number15( String assignedNumber){

     return    InkWell(
       onTap: (){
         if(firstNo=='0'){
           setState(() {
             this.firstNo = assignedNumber;
             selected15=true;
             selectedNumbers.add(15);
             print(selectedNumbers);
           });

         }else if (firstNo != '0'  && secondNo =='0') {
           setState(() {
             thirdNo = '0';
             this.secondNo = assignedNumber;
             selected15=true;
             selectedNumbers.add(15);
             print(selectedNumbers);

           });
         }
         if( secondNo != '0' && thirdNo =='0'){
           setState(() {
             this.thirdNo = assignedNumber;
             selected15=true;
             selectedNumbers.add(15);
             print(selectedNumbers);
           });
         }else if(thirdNo != '0' && fourthNo =='0'){
           setState(() {
             this.fourthNo = assignedNumber;
             selected15=true;
             selectedNumbers.add(15);
             print(selectedNumbers);
           });
         }
         else if(fourthNo != '0' && fifthNo == '0'){
           setState(() {
             this.fifthNo = assignedNumber;
             selected15=true;
             selectedNumbers.add(15);
             print(selectedNumbers);
           });
         }
       },
       onDoubleTap: (){
         setState(() {
           selected15=false;
         });
       },
       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 40,
         decoration:  BoxDecoration(
             color: selected15 ? Colors.indigo:Colors.transparent,
             border:const  Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               top: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               left: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               right: BorderSide(style: BorderStyle.solid,color: Colors.grey),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child:  Center(child:
         Text(assignedNumber,
           style: TextStyle(
             color: selected15 ? Colors.white:Colors.black,
           ),

         )),



       ),
     );
   }
   Widget number16( String assignedNumber){

     return    InkWell(
       onTap: (){
         if(firstNo=='0'){
           setState(() {
             this.firstNo = assignedNumber;
             selected16=true;
             selectedNumbers.add(16);
             print(selectedNumbers);
           });

         }else if (firstNo != '0'  && secondNo =='0') {
           setState(() {
             thirdNo = '0';
             this.secondNo = assignedNumber;
             selected16=true;
             selectedNumbers.add(16);
             print(selectedNumbers);

           });
         }
         if( secondNo != '0' && thirdNo =='0'){
           setState(() {
             this.thirdNo = assignedNumber;
             selected16=true;
             selectedNumbers.add(16);
             print(selectedNumbers);
           });
         }else if(thirdNo != '0' && fourthNo =='0'){
           setState(() {
             this.fourthNo = assignedNumber;
             selected16=true;
             selectedNumbers.add(16);
             print(selectedNumbers);
           });
         }
         else if(fourthNo != '0' && fifthNo == '0'){
           setState(() {
             this.fifthNo = assignedNumber;
             selected16=true;
             selectedNumbers.add(16);
             print(selectedNumbers);
           });
         }
       },
       onDoubleTap: (){
         setState(() {
           selected16=false;
         });
       },
       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 40,
         decoration:  BoxDecoration(
             color: selected16 ? Colors.indigo:Colors.transparent,
             border:const  Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               top: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               left: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               right: BorderSide(style: BorderStyle.solid,color: Colors.grey),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child:  Center(child:
         Text(assignedNumber,
           style: TextStyle(
             color: selected16 ? Colors.white:Colors.black,
           ),

         )),



       ),
     );
   }
   Widget number17( String assignedNumber){

     return    InkWell(
       onTap: (){
         if(firstNo=='0'){
           setState(() {
             this.firstNo = assignedNumber;
             selected17=true;
             selectedNumbers.add(17);
             print(selectedNumbers);
           });

         }else if (firstNo != '0'  && secondNo =='0') {
           setState(() {
             thirdNo = '0';
             this.secondNo = assignedNumber;
             selected17=true;
             selectedNumbers.add(17);
             print(selectedNumbers);

           });
         }
         if( secondNo != '0' && thirdNo =='0'){
           setState(() {
             this.thirdNo = assignedNumber;
             selected17=true;
             selectedNumbers.add(17);
             print(selectedNumbers);
           });
         }else if(thirdNo != '0' && fourthNo =='0'){
           setState(() {
             this.fourthNo = assignedNumber;
             selected17=true;
             selectedNumbers.add(17);
             print(selectedNumbers);
           });
         }
         else if(fourthNo != '0' && fifthNo == '0'){
           setState(() {
             this.fifthNo = assignedNumber;
             selected17=true;
             selectedNumbers.add(17);
             print(selectedNumbers);
           });
         }
       },
       onDoubleTap: (){
         setState(() {
           selected17=false;
         });
       },
       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 40,
         decoration:  BoxDecoration(
             color: selected17 ? Colors.indigo:Colors.transparent,
             border:const  Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               top: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               left: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               right: BorderSide(style: BorderStyle.solid,color: Colors.grey),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child:  Center(child:
         Text(assignedNumber,
           style: TextStyle(
             color: selected17 ? Colors.white:Colors.black,
           ),

         )),



       ),
     );
   }
   Widget number18( String assignedNumber){

     return    InkWell(
       onTap: (){
         if(firstNo=='0'){
           setState(() {
             this.firstNo = assignedNumber;
             selected18=true;
             selectedNumbers.add(18);
             print(selectedNumbers);
           });

         }else if (firstNo != '0'  && secondNo =='0') {
           setState(() {
             thirdNo = '0';
             this.secondNo = assignedNumber;
             selected18=true;
             selectedNumbers.add(18);
             print(selectedNumbers);

           });
         }
         if( secondNo != '0' && thirdNo =='0'){
           setState(() {
             this.thirdNo = assignedNumber;
             selected18=true;
             selectedNumbers.add(18);
             print(selectedNumbers);
           });
         }else if(thirdNo != '0' && fourthNo =='0'){
           setState(() {
             this.fourthNo = assignedNumber;
             selected18=true;
             selectedNumbers.add(18);
             print(selectedNumbers);
           });
         }
         else if(fourthNo != '0' && fifthNo == '0'){
           setState(() {
             this.fifthNo = assignedNumber;
             selected18=true;
             selectedNumbers.add(18);
             print(selectedNumbers);
           });
         }
       },
       onDoubleTap: (){
         setState(() {
           selected18=false;
         });
       },
       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 40,
         decoration:  BoxDecoration(
             color: selected18 ? Colors.indigo:Colors.transparent,
             border:const  Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               top: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               left: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               right: BorderSide(style: BorderStyle.solid,color: Colors.grey),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child:  Center(child:
         Text(assignedNumber,
           style: TextStyle(
             color: selected18 ? Colors.white:Colors.black,
           ),

         )),



       ),
     );
   }
   Widget number19( String assignedNumber){

     return    InkWell(
       onTap: (){
         if(firstNo=='0'){
           setState(() {
             this.firstNo = assignedNumber;
             selected19=true;
             selectedNumbers.add(19);
             print(selectedNumbers);
           });

         }else if (firstNo != '0'  && secondNo =='0') {
           setState(() {
             thirdNo = '0';
             this.secondNo = assignedNumber;
             selected19=true;
             selectedNumbers.add(19);
             print(selectedNumbers);

           });
         }
         if( secondNo != '0' && thirdNo =='0'){
           setState(() {
             this.thirdNo = assignedNumber;
             selected19=true;
             selectedNumbers.add(19);
             print(selectedNumbers);
           });
         }else if(thirdNo != '0' && fourthNo =='0'){
           setState(() {
             this.fourthNo = assignedNumber;
             selected19=true;
             selectedNumbers.add(19);
             print(selectedNumbers);
           });
         }
         else if(fourthNo != '0' && fifthNo == '0'){
           setState(() {
             this.fifthNo = assignedNumber;
             selected19=true;
             selectedNumbers.add(19);
             print(selectedNumbers);
           });
         }
       },
       onDoubleTap: (){
         setState(() {
           selected19=false;
         });
       },
       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 40,
         decoration:  BoxDecoration(
             color: selected19 ? Colors.indigo:Colors.transparent,
             border:const  Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               top: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               left: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               right: BorderSide(style: BorderStyle.solid,color: Colors.grey),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child:  Center(child:
         Text(assignedNumber,
           style: TextStyle(
             color: selected19 ? Colors.white:Colors.black,
           ),

         )),



       ),
     );
   }
   Widget number20( String assignedNumber){

     return    InkWell(
       onTap: (){
         if(firstNo=='0'){
           setState(() {
             this.firstNo = assignedNumber;
             selected20=true;
             selectedNumbers.add(20);
             print(selectedNumbers);
           });

         }else if (firstNo != '0'  && secondNo =='0') {
           setState(() {
             thirdNo = '0';
             this.secondNo = assignedNumber;
             selected20=true;
             selectedNumbers.add(20);
             print(selectedNumbers);

           });
         }
         if( secondNo != '0' && thirdNo =='0'){
           setState(() {
             this.thirdNo = assignedNumber;
             selected20=true;
             selectedNumbers.add(20);
             print(selectedNumbers);
           });
         }else if(thirdNo != '0' && fourthNo =='0'){
           setState(() {
             this.fourthNo = assignedNumber;
             selected20=true;
             selectedNumbers.add(20);
             print(selectedNumbers);
           });
         }
         else if(fourthNo != '0' && fifthNo == '0'){
           setState(() {
             this.fifthNo = assignedNumber;
             selected20=true;
             selectedNumbers.add(20);
             print(selectedNumbers);
           });
         }
       },
       onDoubleTap: (){
         setState(() {
           selected20=false;
         });
       },
       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 40,
         decoration:  BoxDecoration(
             color: selected20 ? Colors.indigo:Colors.transparent,
             border:const  Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               top: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               left: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               right: BorderSide(style: BorderStyle.solid,color: Colors.grey),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child:  Center(child:
         Text(assignedNumber,
           style: TextStyle(
             color: selected20 ? Colors.white:Colors.black,
           ),

         )),



       ),
     );
   }
   Widget number21( String assignedNumber){

     return    InkWell(
       onTap: (){
         if(firstNo=='0'){
           setState(() {
             this.firstNo = assignedNumber;
             selected21=true;
             selectedNumbers.add(21);
             print(selectedNumbers);
           });

         }else if (firstNo != '0'  && secondNo =='0') {
           setState(() {
             thirdNo = '0';
             this.secondNo = assignedNumber;
             selected21=true;
             selectedNumbers.add(21);
             print(selectedNumbers);

           });
         }
         if( secondNo != '0' && thirdNo =='0'){
           setState(() {
             this.thirdNo = assignedNumber;
             selected21=true;
             selectedNumbers.add(21);
             print(selectedNumbers);
           });
         }else if(thirdNo != '0' && fourthNo =='0'){
           setState(() {
             this.fourthNo = assignedNumber;
             selected21=true;
             selectedNumbers.add(21);
             print(selectedNumbers);
           });
         }
         else if(fourthNo != '0' && fifthNo == '0'){
           setState(() {
             this.fifthNo = assignedNumber;
             selected21=true;
             selectedNumbers.add(21);
             print(selectedNumbers);
           });
         }
       },
       onDoubleTap: (){
         setState(() {
           selected21=false;
         });
       },
       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 40,
         decoration:  BoxDecoration(
             color: selected21 ? Colors.indigo:Colors.transparent,
             border:const  Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               top: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               left: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               right: BorderSide(style: BorderStyle.solid,color: Colors.grey),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child:  Center(child:
         Text(assignedNumber,
           style: TextStyle(
             color: selected21 ? Colors.white:Colors.black,
           ),

         )),



       ),
     );
   }
   Widget number22( String assignedNumber){

     return    InkWell(
       onTap: (){
         if(firstNo=='0'){
           setState(() {
             this.firstNo = assignedNumber;
             selected22=true;
             selectedNumbers.add(22);
             print(selectedNumbers);
           });

         }else if (firstNo != '0'  && secondNo =='0') {
           setState(() {
             thirdNo = '0';
             this.secondNo = assignedNumber;
             selected22=true;
             selectedNumbers.add(22);
             print(selectedNumbers);

           });
         }
         if( secondNo != '0' && thirdNo =='0'){
           setState(() {
             this.thirdNo = assignedNumber;
             selected22=true;
             selectedNumbers.add(22);
             print(selectedNumbers);
           });
         }else if(thirdNo != '0' && fourthNo =='0'){
           setState(() {
             this.fourthNo = assignedNumber;
             selected22=true;
             selectedNumbers.add(22);
             print(selectedNumbers);
           });
         }
         else if(fourthNo != '0' && fifthNo == '0'){
           setState(() {
             this.fifthNo = assignedNumber;
             selected22=true;
             selectedNumbers.add(22);
             print(selectedNumbers);
           });
         }
       },
       onDoubleTap: (){
         setState(() {
           selected22=false;
         });
       },
       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 40,
         decoration:  BoxDecoration(
             color: selected22 ? Colors.indigo:Colors.transparent,
             border:const  Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               top: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               left: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               right: BorderSide(style: BorderStyle.solid,color: Colors.grey),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child:  Center(child:
         Text(assignedNumber,
           style: TextStyle(
             color: selected22 ? Colors.white:Colors.black,
           ),

         )),



       ),
     );
   }
   Widget number23( String assignedNumber){

     return    InkWell(
       onTap: (){
         if(firstNo=='0'){
           setState(() {
             this.firstNo = assignedNumber;
             selected23=true;
             selectedNumbers.add(23);
             print(selectedNumbers);
           });

         }else if (firstNo != '0'  && secondNo =='0') {
           setState(() {
             thirdNo = '0';
             this.secondNo = assignedNumber;
             selected23=true;
             selectedNumbers.add(23);
             print(selectedNumbers);

           });
         }
         if( secondNo != '0' && thirdNo =='0'){
           setState(() {
             this.thirdNo = assignedNumber;
             selected23=true;
             selectedNumbers.add(23);
             print(selectedNumbers);
           });
         }else if(thirdNo != '0' && fourthNo =='0'){
           setState(() {
             this.fourthNo = assignedNumber;
             selected23=true;
             selectedNumbers.add(23);
             print(selectedNumbers);
           });
         }
         else if(fourthNo != '0' && fifthNo == '0'){
           setState(() {
             this.fifthNo = assignedNumber;
             selected23=true;
             selectedNumbers.add(23);
             print(selectedNumbers);
           });
         }
       },
       onDoubleTap: (){
         setState(() {
           selected23=false;
         });
       },
       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 40,
         decoration:  BoxDecoration(
             color: selected23 ? Colors.indigo:Colors.transparent,
             border:const  Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               top: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               left: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               right: BorderSide(style: BorderStyle.solid,color: Colors.grey),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child:  Center(child:
         Text(assignedNumber,
           style: TextStyle(
             color: selected23 ? Colors.white:Colors.black,
           ),

         )),



       ),
     );
   }
   Widget number24( String assignedNumber){

     return    InkWell(
       onTap: (){
         if(firstNo=='0'){
           setState(() {
             this.firstNo = assignedNumber;
             selected24=true;
             selectedNumbers.add(24);
             print(selectedNumbers);
           });

         }else if (firstNo != '0'  && secondNo =='0') {
           setState(() {
             thirdNo = '0';
             this.secondNo = assignedNumber;
             selected24=true;
             selectedNumbers.add(24);
             print(selectedNumbers);

           });
         }
         if( secondNo != '0' && thirdNo =='0'){
           setState(() {
             this.thirdNo = assignedNumber;
             selected24=true;
             selectedNumbers.add(24);
             print(selectedNumbers);
           });
         }else if(thirdNo != '0' && fourthNo =='0'){
           setState(() {
             this.fourthNo = assignedNumber;
             selected24=true;
             selectedNumbers.add(24);
             print(selectedNumbers);
           });
         }
         else if(fourthNo != '0' && fifthNo == '0'){
           setState(() {
             this.fifthNo = assignedNumber;
             selected24=true;
             selectedNumbers.add(24);
             print(selectedNumbers);
           });
         }
       },
       onDoubleTap: (){
         setState(() {
           selected24=false;
         });
       },
       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 40,
         decoration:  BoxDecoration(
             color: selected24 ? Colors.indigo:Colors.transparent,
             border:const  Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               top: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               left: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               right: BorderSide(style: BorderStyle.solid,color: Colors.grey),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child:  Center(child:
         Text(assignedNumber,
           style: TextStyle(
             color: selected24 ? Colors.white:Colors.black,
           ),

         )),



       ),
     );
   }
   Widget number25( String assignedNumber){

     return    InkWell(
       onTap: (){
         if(firstNo=='0'){
           setState(() {
             this.firstNo = assignedNumber;
             selected25=true;
             selectedNumbers.add(25);
             print(selectedNumbers);
           });

         }else if (firstNo != '0'  && secondNo =='0') {
           setState(() {
             thirdNo = '0';
             this.secondNo = assignedNumber;
             selected25=true;
             selectedNumbers.add(25);
             print(selectedNumbers);

           });
         }
         if( secondNo != '0' && thirdNo =='0'){
           setState(() {
             this.thirdNo = assignedNumber;
             selected25=true;
             selectedNumbers.add(25);
             print(selectedNumbers);
           });
         }else if(thirdNo != '0' && fourthNo =='0'){
           setState(() {
             this.fourthNo = assignedNumber;
             selected25=true;
             selectedNumbers.add(25);
             print(selectedNumbers);
           });
         }
         else if(fourthNo != '0' && fifthNo == '0'){
           setState(() {
             this.fifthNo = assignedNumber;
             selected25=true;
             selectedNumbers.add(25);
             print(selectedNumbers);
           });
         }
       },
       onDoubleTap: (){
         setState(() {
           selected25=false;
         });
       },
       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 40,
         decoration:  BoxDecoration(
             color: selected25 ? Colors.indigo:Colors.transparent,
             border:const  Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               top: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               left: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               right: BorderSide(style: BorderStyle.solid,color: Colors.grey),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child:  Center(child:
         Text(assignedNumber,
           style: TextStyle(
             color: selected25 ? Colors.white:Colors.black,
           ),

         )),



       ),
     );
   }
   Widget number26( String assignedNumber){

     return    InkWell(
       onTap: (){
         if(firstNo=='0'){
           setState(() {
             this.firstNo = assignedNumber;
             selected26=true;
             selectedNumbers.add(26);
             print(selectedNumbers);
           });

         }else if (firstNo != '0'  && secondNo =='0') {
           setState(() {
             thirdNo = '0';
             this.secondNo = assignedNumber;
             selected26=true;
             selectedNumbers.add(26);
             print(selectedNumbers);

           });
         }
         if( secondNo != '0' && thirdNo =='0'){
           setState(() {
             this.thirdNo = assignedNumber;
             selected26=true;
             selectedNumbers.add(26);
             print(selectedNumbers);
           });
         }else if(thirdNo != '0' && fourthNo =='0'){
           setState(() {
             this.fourthNo = assignedNumber;
             selected26=true;
             selectedNumbers.add(26);
             print(selectedNumbers);
           });
         }
         else if(fourthNo != '0' && fifthNo == '0'){
           setState(() {
             this.fifthNo = assignedNumber;
             selected26=true;
             selectedNumbers.add(26);
             print(selectedNumbers);
           });
         }
       },
       onDoubleTap: (){
         setState(() {
           selected26=false;
         });
       },
       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 40,
         decoration:  BoxDecoration(
             color: selected26 ? Colors.indigo:Colors.transparent,
             border:const  Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               top: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               left: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               right: BorderSide(style: BorderStyle.solid,color: Colors.grey),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child:  Center(child:
         Text(assignedNumber,
           style: TextStyle(
             color: selected26 ? Colors.white:Colors.black,
           ),

         )),



       ),
     );
   }
   Widget number27( String assignedNumber){

     return    InkWell(
       onTap: (){
         if(firstNo=='0'){
           setState(() {
             this.firstNo = assignedNumber;
             selected27=true;
             selectedNumbers.add(27);
             print(selectedNumbers);
           });

         }else if (firstNo != '0'  && secondNo =='0') {
           setState(() {
             thirdNo = '0';
             this.secondNo = assignedNumber;
             selected27=true;
             selectedNumbers.add(27);
             print(selectedNumbers);

           });
         }
         if( secondNo != '0' && thirdNo =='0'){
           setState(() {
             this.thirdNo = assignedNumber;
             selected27=true;
             selectedNumbers.add(27);
             print(selectedNumbers);
           });
         }else if(thirdNo != '0' && fourthNo =='0'){
           setState(() {
             this.fourthNo = assignedNumber;
             selected27=true;
             selectedNumbers.add(27);
             print(selectedNumbers);
           });
         }
         else if(fourthNo != '0' && fifthNo == '0'){
           setState(() {
             this.fifthNo = assignedNumber;
             selected27=true;
             selectedNumbers.add(27);
             print(selectedNumbers);
           });
         }
       },
       onDoubleTap: (){
         setState(() {
           selected27=false;
         });
       },
       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 40,
         decoration:  BoxDecoration(
             color: selected27 ? Colors.indigo:Colors.transparent,
             border:const  Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               top: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               left: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               right: BorderSide(style: BorderStyle.solid,color: Colors.grey),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child:  Center(child:
         Text(assignedNumber,
           style: TextStyle(
             color: selected27 ? Colors.white:Colors.black,
           ),

         )),



       ),
     );
   }
   Widget number28( String assignedNumber){

     return    InkWell(
       onTap: (){
         if(firstNo=='0'){
           setState(() {
             this.firstNo = assignedNumber;
             selected28=true;
             selectedNumbers.add(28);
             print(selectedNumbers);
           });

         }else if (firstNo != '0'  && secondNo =='0') {
           setState(() {
             thirdNo = '0';
             this.secondNo = assignedNumber;
             selected28=true;
             selectedNumbers.add(28);
             print(selectedNumbers);

           });
         }
         if( secondNo != '0' && thirdNo =='0'){
           setState(() {
             this.thirdNo = assignedNumber;
             selected28=true;
             selectedNumbers.add(28);
             print(selectedNumbers);
           });
         }else if(thirdNo != '0' && fourthNo =='0'){
           setState(() {
             this.fourthNo = assignedNumber;
             selected28=true;
             selectedNumbers.add(28);
             print(selectedNumbers);
           });
         }
         else if(fourthNo != '0' && fifthNo == '0'){
           setState(() {
             this.fifthNo = assignedNumber;
             selected28=true;
             selectedNumbers.add(28);
             print(selectedNumbers);
           });
         }
       },
       onDoubleTap: (){
         setState(() {
           selected28=false;
         });
       },
       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 40,
         decoration:  BoxDecoration(
             color: selected28 ? Colors.indigo:Colors.transparent,
             border:const  Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               top: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               left: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               right: BorderSide(style: BorderStyle.solid,color: Colors.grey),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child:  Center(child:
         Text(assignedNumber,
           style: TextStyle(
             color: selected28 ? Colors.white:Colors.black,
           ),

         )),



       ),
     );
   }
   Widget number29( String assignedNumber){

     return    InkWell(
       onTap: (){
         if(firstNo=='0'){
           setState(() {
             this.firstNo = assignedNumber;
             selected29=true;
             selectedNumbers.add(29);
             print(selectedNumbers);
           });

         }else if (firstNo != '0'  && secondNo =='0') {
           setState(() {
             thirdNo = '0';
             this.secondNo = assignedNumber;
             selected29=true;
             selectedNumbers.add(29);
             print(selectedNumbers);

           });
         }
         if( secondNo != '0' && thirdNo =='0'){
           setState(() {
             this.thirdNo = assignedNumber;
             selected29=true;
             selectedNumbers.add(29);
             print(selectedNumbers);
           });
         }else if(thirdNo != '0' && fourthNo =='0'){
           setState(() {
             this.fourthNo = assignedNumber;
             selected29=true;
             selectedNumbers.add(29);
             print(selectedNumbers);
           });
         }
         else if(fourthNo != '0' && fifthNo == '0'){
           setState(() {
             this.fifthNo = assignedNumber;
             selected29=true;
             selectedNumbers.add(29);
             print(selectedNumbers);
           });
         }
       },
       onDoubleTap: (){
         setState(() {
           selected29=false;
         });
       },
       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 40,
         decoration:  BoxDecoration(
             color: selected29 ? Colors.indigo:Colors.transparent,
             border:const  Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               top: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               left: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               right: BorderSide(style: BorderStyle.solid,color: Colors.grey),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child:  Center(child:
         Text(assignedNumber,
           style: TextStyle(
             color: selected29 ? Colors.white:Colors.black,
           ),

         )),



       ),
     );
   }
   Widget number30( String assignedNumber){

     return    InkWell(
       onTap: (){
         if(firstNo=='0'){
           setState(() {
             this.firstNo = assignedNumber;
             selected30=true;
             selectedNumbers.add(30);
             print(selectedNumbers);
           });

         }else if (firstNo != '0'  && secondNo =='0') {
           setState(() {
             thirdNo = '0';
             this.secondNo = assignedNumber;
             selected30=true;
             selectedNumbers.add(30);
             print(selectedNumbers);

           });
         }
         if( secondNo != '0' && thirdNo =='0'){
           setState(() {
             this.thirdNo = assignedNumber;
             selected30=true;
             selectedNumbers.add(30);
             print(selectedNumbers);
           });
         }else if(thirdNo != '0' && fourthNo =='0'){
           setState(() {
             this.fourthNo = assignedNumber;
             selected30=true;
             selectedNumbers.add(30);
             print(selectedNumbers);
           });
         }
         else if(fourthNo != '0' && fifthNo == '0'){
           setState(() {
             this.fifthNo = assignedNumber;
             selected30=true;
             selectedNumbers.add(30);
             print(selectedNumbers);
           });
         }
       },
       onDoubleTap: (){
         setState(() {
           selected30=false;
         });
       },
       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 40,
         decoration:  BoxDecoration(
             color: selected30 ? Colors.indigo:Colors.transparent,
             border:const  Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               top: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               left: BorderSide(style: BorderStyle.solid,color: Colors.grey),
               right: BorderSide(style: BorderStyle.solid,color: Colors.grey),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child:  Center(child:
         Text(assignedNumber,
           style: TextStyle(
             color: selected30 ? Colors.white:Colors.black,
           ),

         )),



       ),
     );
   }


  Widget bottomContainer(context){
    var width =MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Container(
      height: height*0.6375,
      width: width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(25),bottom: Radius.zero)
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.only(left: 8,right: 8,top: 10),
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('12:00 PM'),

                Text('Double'),
              ],
            ),

          ),
          fieldSelection(context),
          InkWell(
            onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment(selectedNumbers: selectedNumbers.toString(),))),
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text('Make a payment',style: TextStyle(color: Colors.white),),
              ),
            ),
          ),
        ],
      ),

    );
  }

  Widget fieldSelection(context){
    var width =MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Container(
      height: height*0.5,
      width: width*0.97,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25)
      ),
      child: GridView(
        gridDelegate: const  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 6,
            childAspectRatio: 1

        ),
        children: [
          number1('1'),
          number2('2'),
          number3('3'),
          number4('4'),
          number5('5'),
          number6('6'),
          number7('7'),
          number8('8'),
          number9('9'),
          number10('10'),
          number11('11'),
          number12('12'),
          number13('13'),
          number14('14'),
          number15('15'),
          number16('16'),
          number17('17'),
          number18('18'),
          number19('19'),
          number20('20'),
          number21('21'),
          number22('22'),
          number23('23'),
          number24('24'),
          number25('25'),
          number26('26'),
          number27('27'),
          number28('28'),
          number29('29'),
          number30('30'),



        ],

      )
    );
  }

   Widget fieldNumber1(String first){
     return Container(
       padding: EdgeInsets.only(left: 10,right: 10),
       height: 80,
       width: 70,



       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 70,
         decoration:  BoxDecoration(
             color: Colors.white,
             border:const Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.white),
               top: BorderSide(style: BorderStyle.solid,color: Colors.white),
               left: BorderSide(style: BorderStyle.solid,color: Colors.white),
               right: BorderSide(style: BorderStyle.solid,color: Colors.white),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child: Center(child: Text(firstNo,style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),)),



       ),
     );
   }
   Widget fieldNumber2(String second){
     return Container(
       padding: EdgeInsets.only(left: 10,right: 10),
       height: 80,
       width: 70,



       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 70,
         decoration:  BoxDecoration(
             color: Colors.white,
             border:const Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.white),
               top: BorderSide(style: BorderStyle.solid,color: Colors.white),
               left: BorderSide(style: BorderStyle.solid,color: Colors.white),
               right: BorderSide(style: BorderStyle.solid,color: Colors.white),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child: Center(child: Text(secondNo,style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),)),



       ),
     );
   }
   Widget fieldNumber3(String third){
     return Container(
       padding: EdgeInsets.only(left: 10,right: 10),
       height: 80,
       width: 70,



       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 70,
         decoration:  BoxDecoration(
             color: Colors.white,
             border:const Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.white),
               top: BorderSide(style: BorderStyle.solid,color: Colors.white),
               left: BorderSide(style: BorderStyle.solid,color: Colors.white),
               right: BorderSide(style: BorderStyle.solid,color: Colors.white),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child: Center(child: Text(thirdNo,style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),)),



       ),
     );
   }
   Widget fieldNumber4(String fourth){
     return Container(
       padding: EdgeInsets.only(left: 10,right: 10),
       height: 80,
       width: 70,



       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 70,
         decoration:  BoxDecoration(
             color: Colors.white,
             border:const Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.white),
               top: BorderSide(style: BorderStyle.solid,color: Colors.white),
               left: BorderSide(style: BorderStyle.solid,color: Colors.white),
               right: BorderSide(style: BorderStyle.solid,color: Colors.white),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child: Center(child: Text(fourthNo,style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),)),



       ),
     );
   }
   Widget fieldNumber5(String fifth){
     return Container(
       padding: EdgeInsets.only(left: 10,right: 10),
       height: 80,
       width: 70,



       child: Container(
         margin: EdgeInsets.only(top: 20,right: 5,left: 5),


         height: 70,
         decoration:  BoxDecoration(
             color: Colors.white,
             border:const Border(
               bottom: BorderSide(style: BorderStyle.solid,color: Colors.white),
               top: BorderSide(style: BorderStyle.solid,color: Colors.white),
               left: BorderSide(style: BorderStyle.solid,color: Colors.white),
               right: BorderSide(style: BorderStyle.solid,color: Colors.white),
             ),
             borderRadius: BorderRadius.circular(7)
         ),
         child: Center(child: Text(fifthNo,style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),)),



       ),
     );
   }
}


