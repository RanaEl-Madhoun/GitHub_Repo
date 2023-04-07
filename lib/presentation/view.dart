


import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
//repository's name, description, owner's username, and owner's avatar image. You can also decide to display other information as you see fit.html url 

class view extends StatelessWidget{
  

  

  @override
  Widget build(BuildContext context) {
   double appwidth= MediaQuery.of(context).size.width;
  double apphighet= MediaQuery.of(context).size.height; 
    
    // TODO: implement build
   return Scaffold(
    appBar: AppBar(),
    body:  ScreenUtilInit(
      builder: (BuildContext context, Widget? child) { 
        return  SingleChildScrollView(
        child: 
           Expanded(
             child: Container(
               width: MediaQuery.of(context).size.width/2,
        height: MediaQuery.of(context).size.height/3,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
              color: Color.fromARGB(255, 154, 87, 79) ),
               // width: MediaQuery.of(context).size.4,
               
                
               
                 //padding:EdgeInsets.all(10.sp),
                 margin: EdgeInsets.only(
                  left:16.8.sp,right: 16.8.sp,top:100
                  ),
                child:Center(child: Text("Repositery Title",style:GoogleFonts.andadaPro(fontSize: 20)))
              // Column(
              //   mainAxisAlignment:MainAxisAlignment.start,
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     //Text("data")//repo name
              // Center(
              //   child: Text("The Repo HEADLIIIIIINR")
              //   ) , Row(
              //       children: [
              //         // user avater
              //         Container(
                        
              //           width: 50.sp,
              //         height: 50.sp,
              //         margin: EdgeInsets.all(10.sp),
              //         decoration:BoxDecoration(
              //           borderRadius: BorderRadius.circular(30.sp), color:Colors.amber
              //           ),
                       
              //           ),
              //           //user name 
              //           Text("USER NAME")
              //       ],
              //     ),
              //     Flexible(
              //       child: Container(
              //         padding: EdgeInsets.all(10.sp),
              //         child: Text("Repo desc")
              //         )
              //       )
              
                  
              //   ],
              // ),
              ),
           )
          
        
        );
       },
     
    ),
   );
  }
  

}
 void main(List<String> args) {
  runApp(
   LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return MaterialApp(home: view(),);
          }

   )
  );
   }
 
